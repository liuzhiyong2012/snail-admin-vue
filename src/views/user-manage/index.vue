<template>
  <div class="front-user-list-ctn app-container">
    <div class="filter-container">

      <el-input v-model="listQuery.phone" placeholder="手机号" style="width: 200px;" class="search-item filter-item" />

      <el-input v-model="listQuery.name" placeholder="昵称" style="width: 200px;" class="search-item filter-item" />

      <el-input v-model="listQuery.email" placeholder="邮箱" style="width: 200px;" class="search-item filter-item" />

      <el-select v-model="listQuery.roleType" placeholder="用户类型" clearable style="width: 90px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in roleTypeList" :key="index" :label="item.name" :value="item.value" />
      </el-select>

      <el-button v-waves class="search-item filter-item" type="primary" icon="el-icon-search" @click="handleFilter">搜索</el-button>

      <el-button v-waves class="search-item filter-item" type="info" icon="el-icon-setting" style="margin-left: 0px" @click="resetList">重置</el-button>
    </div>

    <el-table :key="tableKey" v-loading="listLoading" :data="list" border fit highlight-current-row style="width: 100%;">
      <!-- <el-table-column label="ID" prop="id" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.id }}</span>
        </template>
      </el-table-column> -->

      <el-table-column label="手机号" prop="phone" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.phone||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="昵称" prop="name" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.name||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="密码" prop="password" align="center">
        <template slot-scope="{ row }">
          <span>{{ '**********'||row.password }}</span>
        </template>
      </el-table-column>

      <el-table-column label="邮箱" prop="email" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.email||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="用户类型" class-name="status-col">
        <template slot-scope="{ row }">
          <el-tag :type="row.roleType | roleTypeStyleFilter">{{ row.roleType | roleTypeFilter }}</el-tag>
        </template>
      </el-table-column>

      <el-table-column label="状态" class-name="status-col">
        <template slot-scope="{ row }">
          <el-tag :type="row.status | statusStyleFilter">{{ row.status | statusFilter }}</el-tag>
        </template>
      </el-table-column>

      <el-table-column label="操作" align="center" width="230" class-name="small-padding fixed-width">
        <template slot-scope="{ row, $index }">
          <el-button type="primary" size="mini" @click="handleUpdate(row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(row, $index)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" :page.sync="listQuery.pageNumber" :limit.sync="listQuery.pageSize" @pagination="getList" />

    <el-dialog :title="textMap[dialogStatus]" :visible.sync="dialogFormVisible">
      <el-form ref="dataForm" :rules="rules" :model="temp" label-position="left" label-width="70px" style="width: 400px; margin-left:50px;">

        <el-form-item label="用户名" prop="name"><el-input v-model="temp.name" /></el-form-item>
        <el-form-item label="手机号" prop="phone"><el-input v-model="temp.phone" /></el-form-item>
        <el-form-item label="邮箱" prop="email"><el-input v-model="temp.email" /></el-form-item>

        <el-form-item label="用户类型">
          <el-select v-model="temp.roleType" class="filter-item" placeholder="请选择">
            <el-option v-for="(item,index) in roleTypeList" :key="index" :label="item.name" :value="item.value" />
          </el-select>
        </el-form-item>

        <el-form-item label="状态">
          <el-select v-model="temp.status" class="filter-item" placeholder="请选择">
            <el-option v-for="(item,index) in statusList" :key="index" :label="item.name" :value="item.value" />
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取消</el-button>
        <el-button type="primary" @click="dialogStatus === 'create' ? createData() : updateData()">确定</el-button>
      </div>
    </el-dialog>

    <el-dialog :visible.sync="dialogPvVisible" title="Reading statistics">
      <el-table :data="pvData" border fit highlight-current-row style="width: 100%">
        <el-table-column prop="key" label="Channel" />
        <el-table-column prop="pv" label="Pv" />
      </el-table>
      <span slot="footer" class="dialog-footer"><el-button type="primary" @click="dialogPvVisible = false">Confirm</el-button></span>
    </el-dialog>
  </div>
</template>

<script>
import waves from '@/directive/waves' // waves directive
import { parseTime } from '@/utils'
import Pagination from '@/components/Pagination' // secondary package based on el-pagination
import FrontUserApi from '../../api/front-user'

export default {
  name: 'FrontUserList',
  components: { Pagination },
  directives: { waves },
  filters: {
    roleTypeFilter(roleType) {
      const roleTypeMap = {
        '1': '普通用户',
        '2': '会员用户'
      }
      return roleTypeMap[roleType]
    },
    roleTypeStyleFilter(roleType) {
      const roleTypeMap = {
        '1': 'success',
        '2': 'info'
      }
      return roleTypeMap[roleType]
    },
    statusFilter(roleType) {
      const statusMap = {
        '1': '启用',
        '2': '冻结'
      }
      return statusMap[roleType]
    },
    statusStyleFilter(roleType) {
      const statusMap = {
        '1': 'success',
        '2': 'danger'
      }
      return statusMap[roleType]
    }
  },
  data() {
    return {
      tableKey: 0,
      list: null,
      total: 0,
      listLoading: true,
      listQuery: {
        pageNumber: 1,
        pageSize: 20,
        name: null,
        phone: null,
        type: null,
        status: null
      },
      roleTypeList: [
        { name: '普通用户', value: '1' },
        { name: '会员用户', value: '2' }
      ],
      statusList: [
        { name: '启用', value: '1' },
        { name: '冻结', value: '2' }
      ],

      sortOptions: [{ label: 'ID Ascending', key: '+id' }, { label: 'ID Descending', key: '-id' }],
      statusOptions: ['published', 'draft', 'deleted'],
      showReviewer: false,
      temp: {
        id: null,
        name: null,
        phone: null,
        type: null,
        status: null
      },
      dialogFormVisible: false,
      dialogStatus: '',
      textMap: {
        update: '编辑',
        create: '新增'
      },
      dialogPvVisible: false,
      pvData: [],
      rules: {
        name: [{ required: true, message: '用户名是必须的', trigger: 'change' }]
      },
      downloadLoading: false
    }
  },
  created() {
    this.getList()
  },
  methods: {
    resetList() {
      this.listQuery = {
        pageNumber: 1,
        pageSize: 20,
        name: null,
        phone: null,
        type: null,
        status: null
      }
      this.getList()
    },
    getList() {
      this.listLoading = true
      FrontUserApi.getFrontUserList(this.listQuery).then(response => {
        this.list = response.datas
        this.total = response.total
        this.listLoading = false
      })
    },
    handleFilter() {
      this.listQuery.pageNumber = 1
      this.getList()
    },
    resetTemp() {
      this.temp = {
        id: undefined,
        name: null,
        phone: null,
        type: null,
        status: null
      }
    },
    handleCreate() {
      this.resetTemp()
      this.dialogStatus = 'create'
      this.dialogFormVisible = true
      this.$nextTick(() => {
        this.$refs['dataForm'].clearValidate()
      })
    },
    createData() {
      this.$refs['dataForm'].validate((valid) => {
        if (valid) {

        }
      })
    },
    handleUpdate(row) {
      this.temp = Object.assign({}, row) // copy obj
      this.temp.timestamp = new Date(this.temp.timestamp)
      this.dialogStatus = 'update'
      this.dialogFormVisible = true
      this.$nextTick(() => {
        this.$refs['dataForm'].clearValidate()
      })
    },
    updateData() {
      this.$refs['dataForm'].validate((valid) => {
        if (valid) {
          const tempData = Object.assign({}, this.temp)

          this.listLoading = true
          FrontUserApi.updateFrontUser(tempData).then(response => {
            this.dialogFormVisible = false
            this.$notify({
              title: '成功',
              message: '成功更新一条记录',
              type: 'success',
              duration: 2000
            })
            this.resetList()
          })
        }
      })
    },
    handleDelete(row, index) {
      this.listLoading = true
      FrontUserApi.deleteById(row).then(response => {
        this.$notify({
          title: '成功',
          message: '成功删除一条记录',
          type: 'success',
          duration: 2000
        })
        this.resetList()
      })
    },
    formatJson(filterVal) {
      return this.list.map(v => filterVal.map(j => {
        if (j === 'timestamp') {
          return parseTime(v[j])
        } else {
          return v[j]
        }
      }))
    },
    getSortClass: function(key) {
      const sort = this.listQuery.sort
      return sort === `+${key}` ? 'ascending' : 'descending'
    }
  }
}
</script>

<style scoped lang="scss">
.front-user-list-ctn {
  .search-item {
    margin-right: 20px;
  }
}
</style>
