<template>
  <div class="article-list-ctn app-container">
    <div class="filter-container">
      <el-input v-model="listQuery.username" placeholder="发布人" style="width: 200px;" class="search-item filter-item" />

      <el-input v-model="listQuery.title" placeholder="标题" style="width: 200px;" class="search-item filter-item" />

      <el-select v-model="listQuery.firstTypeId" placeholder="类型" clearable style="width: 120px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in firstTypeList" :key="index" :label="item.name" :value="item.id" />
      </el-select>

      <el-date-picker v-model="listQuery.startTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="开始时间" style="width: 200px;vertical-align: top;" />
      <el-date-picker v-model="listQuery.endTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="结束时间" style="width: 200px;vertical-align: top;" />

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
      <el-table-column label="封面图" prop="imageUrl" align="center">
        <template slot-scope="{ row }">
          <img :src="row.imageUrl|addBaseUrl" alt="" style="max-width: 200px;max-height: 100px;">
        </template>
      </el-table-column>
      <el-table-column label="标题" prop="title" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.title||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="发布人" prop="title" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.username||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="更新时间" prop="title" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.updatedTime||row.createdTime }}</span>
        </template>
      </el-table-column>

      <el-table-column label="发布时间" prop="title" align="center">
        <template slot-scope="{ row }">
          <span>{{ row.publishTime||'--' }}</span>
        </template>
      </el-table-column>

      <el-table-column label="贴子类型" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.firstTypeName }}
        </template>
      </el-table-column>

      <el-table-column label="子类型" class-name="status-col">
        <template slot-scope="{ row }">
          {{ row.secondTypeName }}
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
import waves from '@/directive/waves'
import Pagination from '@/components/Pagination'
import ArticleApi from '../../api/article'
import TypeApi from '../../api/type'

export default {
  name: 'AdvertiseList',
  components: { Pagination },
  directives: { waves },
  filters: {
    typeFilter(roleType) {
      const roleTypeMap = {
        '1': '富文本',
        '2': '关联用户贴子',
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
        '1': '审核中',
        '2': '已通过',
        '3': '已拒绝'
      }
      return statusMap[roleType]
    },
    statusStyleFilter(roleType) {
      const statusMap = {
        '1': 'warning',
        '2': 'success',
        '3': 'danger'
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

        username: null,
        title: null,
        firstTypeId: null,
        status: null,
        positionId: null,
        startTime: null,
        endTime: null

      },
      firstTypeList: [

      ],
      positionList: [

      ],
      statusList: [
        { name: '审核中', value: '1' },
        { name: '已通过', value: '2' },
        { name: '已拒绝', value: '3' }
      ],
      textMap: {
        update: '编辑',
        create: '新增'
      }
    }
  },
  created() {
    this.getList()
    this.getFirstTypeList()
  },
  methods: {
    getFirstTypeList() {
      // username title
      TypeApi.getType({
        pageSize: 1000,
        pageNumber: 1,
        type: 'menu'
      }).then((res) => {
        this.firstTypeList = res.datas
      })
    },
    resetList() {
      this.listQuery = {
        pageNumber: 1,
        pageSize: 10,
        username: null,
        title: null,
        firstTypeId: null,
        status: null,
        positionId: null,
        startTime: null,
        endTime: null
      }
      this.getList()
    },
    getList() {
      this.listLoading = true
      // debuggerss
      ArticleApi.getArticle(this.listQuery).then(response => {
        this.list = response.datas
        this.total = response.total
        this.listLoading = false
      })
    },
    handleFilter() {
      this.listQuery.pageNumber = 1
      this.getList()
    },
    handleCreate() {
      this.$router.push({
        path: '/article/edit',
        query: {
          opertype: 'add'
        }
      })
    },

    handleUpdate(row) {
      this.$router.push({
        path: '/article/edit',
        query: {
          opertype: 'edit',
          id: row.id
        }
      })
    },
    handleDelete(row, index) {
      this.listLoading = true
      ArticleApi.deleteArticle(row).then(response => {
        this.$notify({
          title: '成功',
          message: '成功删除一条记录',
          type: 'success',
          duration: 2000
        })
        this.resetList()
      })
    }
  }
}
</script>

<style scoped lang="scss">
.article-list-ctn {
  .search-item {
    margin-right: 20px;
  }
}
</style>
