<template>
  <div class="advertise-list-ctn app-container">
    <div class="filter-container">
      <el-input v-model="listQuery.name" placeholder="广告名" style="width: 200px;" class="search-item filter-item" />

      <el-select v-model="listQuery.type" placeholder="广告类型" clearable style="width: 120px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in typeList" :key="index" :label="item.name" :value="item.value" />
      </el-select>

      <el-date-picker v-model="listQuery.startTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="开始时间" style="width: 200px;vertical-align: top;" />
      <el-date-picker v-model="listQuery.endTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="结束时间" style="width: 200px;vertical-align: top;" />

      <el-select v-model="listQuery.positionId" placeholder="广告位置" clearable style="width: 90px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in positionList" :key="index" :label="item.name" :value="item.id" />
      </el-select>

      <el-select v-model="listQuery.status" placeholder="状态" clearable style="width: 120px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in statusList" :key="index" :label="item.name" :value="item.value" />
      </el-select>

      <el-button v-waves class="search-item filter-item" type="primary" icon="el-icon-search" @click="handleFilter">搜索</el-button>
      <el-button v-waves class="search-item filter-item" type="info" icon="el-icon-setting" style="margin-left: 0px" @click="resetList">重置</el-button>
      <el-button class="search-item filter-item" style="margin-left: 10px;" type="primary" icon="el-icon-edit" @click="handleCreate">
        新增
      </el-button>

    </div>

    <el-table :key="tableKey" v-loading="listLoading" :data="list" border fit highlight-current-row style="width: 100%;">

      <el-table-column label="广告名" prop="name" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.name||'--' }}</span>
        </template>
      </el-table-column>
      <el-table-column label="封面图" prop="imageUrl" align="center">
        <template slot-scope="{ row }">
          <img :src="row.imageUrl|addBaseUrl" alt="" style="max-width: 200px;max-height: 100px;">
        </template>
      </el-table-column>

      <el-table-column label="广告类型" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.type | typeFilter }}
        </template>
      </el-table-column>

      <el-table-column label="位置" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.positionName }}
        </template>
      </el-table-column>
      <el-table-column label="开始时间" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.startTime }}
        </template>
      </el-table-column>
      <el-table-column label="结束时间" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.endTime }}
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

  </div>
</template>

<script>
import waves from '@/directive/waves' // waves directive
import { parseTime } from '@/utils'
import Pagination from '@/components/Pagination' // secondary package based on el-pagination
import AdvertiseApi from '../../api/advertise'
import TypeApi from '../../api/type'

export default {
  name: 'AdvertiseList',
  components: { Pagination },
  directives: { waves },
  filters: {
    typeFilter(roleType) {
      const roleTypeMap = {
        '1': '关联贴子',
        '2': '自定义',
        '3': '外部链接'
      }
      return roleTypeMap[roleType]
    },
    typeStyleFilter(roleType) {
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
        status: null,
        positionId: null,
        type: null
      },
      typeList: [
        { name: '关联贴子', value: '1' },
        { name: '自定义', value: '2' },
        { name: '外部链接', value: '3' }
      ],
      positionList: [

      ],
      statusList: [
        { name: '启用', value: '1' },
        { name: '冻结', value: '2' }
      ],

      temp: {
        id: null,
        username: null,
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
        username: [{ required: true, message: '用户名是必须的', trigger: 'change' }]
      }
    }
  },
  created() {
    this.getList()
    this.getPositionList()
  },
  methods: {
    getPositionList() {
      TypeApi.getType({
        parentId: '1406277910093938689',
        pageNumber: 1,
        pageSize: 1000
      }).then((res) => {
        this.positionList = res.datas
      })
    },
    resetList() {
      this.listQuery = {
        pageNumber: 1,
        pageSize: 20,
        username: null,
        phone: null,
        type: null,
        status: null
      }
      this.getList()
    },
    getList() {
      this.listLoading = true
      AdvertiseApi.getAdvertise(this.listQuery).then(response => {
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
        status: null
      }
    },
    handleCreate() {
      this.$router.push({
        path: '/advertise/edit',
        query: {
          opertype: 'add'
        }
      })
      /* this.resetTemp()
      this.dialogStatus = 'create'
      this.dialogFormVisible = true
      this.$nextTick(() => {
        this.$refs['dataForm'].clearValidate()
      }) */
    },

    handleUpdate(row) {
      this.$router.push({
        path: '/advertise/edit',
        query: {
          opertype: 'edit',
          id: row.id
        }
      })
    },
    handleDelete(row, index) {
      this.listLoading = true
      AdvertiseApi.deleteAdvertise(row).then(response => {
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
.advertise-list-ctn {
  .search-item {
    margin-right: 20px;
  }
}
</style>
