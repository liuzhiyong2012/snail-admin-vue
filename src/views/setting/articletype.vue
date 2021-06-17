<template>
  <div class="front-user-list-ctn app-container">
    <div class="filter-container">
      <el-input v-model="listQuery.name" placeholder="名称" style="width: 200px;" class="search-item filter-item" />

      <el-input v-model="listQuery.code" placeholder="值" style="width: 200px;" class="search-item filter-item" />

      <el-button v-waves class="search-item filter-item" type="primary" icon="el-icon-search" @click="handleFilter">搜索</el-button>

      <el-button v-waves class="search-item filter-item" type="info" icon="el-icon-setting" style="margin-left: 0px" @click="resetList">重置</el-button>

      <el-button class="search-item filter-item" style="margin-left: 10px;" type="primary" icon="el-icon-edit" @click="handleCreate">
        新增
      </el-button>
    </div>

    <el-table :key="tableKey" v-loading="listLoading" :data="list" border fit highlight-current-row style="width: 100%;">
      <el-table-column label="ID" prop="id" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.id }}</span>
        </template>
      </el-table-column>

      <el-table-column label="名称" prop="name" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.name||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="值" prop="code" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.code||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="描述" prop="code" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.desc||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="参数值" prop="param" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.param||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="类型值" prop="type" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.type||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="状态" class-name="status-col">
        <template slot-scope="{ row }">
          <el-tag :type="row.status | statusStyleFilter">{{ row.status | statusFilter }}</el-tag>
        </template>
      </el-table-column>

      <el-table-column label="操作" align="center" width="330" class-name="small-padding fixed-width">
        <template slot-scope="{ row, $index }">
          <el-button type="primary" size="mini" @click="handleUpdate(row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="handleDelete(row, $index)">删除</el-button>
          <el-button type="primary" size="mini" @click="handleSecond(row)">添加下级分类</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total > 0" :total="total" :page.sync="listQuery.pageNumber" :limit.sync="listQuery.pageSize" @pagination="getList" />

    <el-dialog :title="textMap[dialogStatus]" :visible.sync="dialogFormVisible">
      <el-form ref="dataForm" :rules="rules" :model="temp" label-position="left" label-width="70px" style="width: 400px; margin-left:50px;">

        <el-form-item label="名称" prop="name"><el-input v-model="temp.name" /></el-form-item>
        <el-form-item label="值" prop="code"><el-input v-model="temp.code" /></el-form-item>
        <!-- <el-form-item label="描述" prop="desc"><el-input v-model="temp.desc" /></el-form-item> -->
        <el-form-item label="参数值" prop="param"><el-input v-model="temp.param" /></el-form-item>
        <el-form-item label="类型值" prop="type"><el-input v-model="temp.type" /></el-form-item>
        <el-form-item label="描述" prop="desc"><el-input v-model="temp.desc" /></el-form-item>

        <el-form-item label="状态">
          <el-select v-model="temp.status" class="filter-item" placeholder="请选择">
            <el-option v-for="item in statusList" :key="item" :label="item.name" :value="item.value" />
          </el-select>
        </el-form-item>

      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取消</el-button>
        <el-button type="primary" @click="dialogStatus === 'create' ? createData() : updateData()">确定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import waves from '@/directive/waves' // waves directive
import Pagination from '@/components/Pagination' // secondary package based on el-pagination
import SettingApi from '../../api/setting'

export default {
  name: 'FrontUserList',
  components: { Pagination },
  directives: { waves },
  filters: {
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
        pageSize: 10,
        name: null,
        code: null,
        param: null,
        type: null,
        desc: null,
        status: null,
        level: '1'
      },
      statusList: [
        { name: '启用', value: '1' },
        { name: '冻结', value: '2' }
      ],
      temp: {
        id: null,
        name: null,
        code: null,
        param: null,
        type: null,
        desc: null,
        status: null,
        level: '1'
      },
      dialogFormVisible: false,
      dialogStatus: '',
      textMap: {
        update: '编辑',
        create: '新增'
      },
      rules: {
        name: [{ required: true, message: '类型名称是必须的', trigger: 'change' }],
        code: [{ required: true, message: '值是必须的', trigger: 'change' }],
        status: [{ required: true, message: '状态是必须的', trigger: 'change' }]
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
        pageSize: 10,
        name: null,
        code: null,
        param: null,
        type: null,
        desc: null,
        status: null,
        level: '1',
        parentId: null
      }
      this.getList()
    },
    getList() {
      this.listLoading = true
      SettingApi.getType(this.listQuery).then(response => {
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
        username: null,
        phone: null,
        type: null,
        status: null,
        level: '1',
        parentId: null
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
          const tempData = Object.assign({}, this.temp)

          this.listLoading = true
          tempData.parentId = null

          SettingApi.insertType(tempData).then(response => {
            this.dialogFormVisible = false
            this.$notify({
              title: '成功',
              message: '成功新增一条记录',
              type: 'success',
              duration: 2000
            })
            this.resetList()
          })
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

          SettingApi.updateType(tempData).then(response => {
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
      SettingApi.deleteType(row).then(response => {
        this.$notify({
          title: '成功',
          message: '成功删除一条记录',
          type: 'success',
          duration: 2000
        })
        this.resetList()
      })
    },
    handleSecond(row, index) {
      this.$router.push({
        path: '/setting/article-second-type',
        query: {
          parentId: row.id
        }
      })
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
