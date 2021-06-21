<template>
  <div class="article-list-ctn app-container">
    <div class="filter-container">
      <el-input v-model="listQuery.username" placeholder="发布人" style="width: 200px;" class="search-item filter-item" />

      <el-input v-model="listQuery.title" placeholder="标题" style="width: 200px;" class="search-item filter-item" />

      <el-select v-model="listQuery.first_type_id" placeholder="广告类型" clearable style="width: 120px" class="search-item filter-item">
        <el-option :key="''" :label="'全部'" :value="''" />
        <el-option v-for="(item, index) in firstTypeList" :key="index" :label="item.name" :value="item.value" />
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
      firstTypeList: [],
      positionList: [

      ],
      statusList: [
        { name: '启用', value: '1' },
        { name: '冻结', value: '2' }
      ],
      textMap: {
        update: '编辑',
        create: '新增'
      }
    }
  },
  created() {
    this.getList()
    this.getArticleTypeList()
  },
  methods: {
    getArticleTypeList() {
      TypeApi.getType({
        pageSize: 1000,
        pageNumber: 1,
        type: 'menu'
      }).then((res) => {
        this.articleTypeList = res.datas
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
