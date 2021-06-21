
<template>
  <section class="article-select-modal-ctn">
    <el-dialog :title="'选择广告'" :visible.sync="isShowed">
      <div class="filter-container">
        <el-input v-model="listQuery.title" placeholder="名称" style="width: 200px;" class="search-item filter-item" />

        <el-button class="search-item filter-item" type="primary" icon="el-icon-search" @click="handleFilter">搜索</el-button>

        <el-button class="search-item filter-item" type="info" icon="el-icon-setting" style="margin-left: 0px" @click="resetList">重置</el-button>

      </div>

      <el-table :key="tableKey" v-loading="listLoading" :data="list" border fit highlight-current-row style="width: 100%;" @row-click="singleElection">
        <el-table-column label="" width="65">
          <template slot-scope="scope">
            <el-radio v-model="selectId" class="radio" :label="scope.$index">&nbsp;</el-radio>
          </template>
        </el-table-column>

        <el-table-column label="ID" prop="id" align="center" width="200">
          <template slot-scope="{ row }">
            <span>{{ row.id }}</span>
          </template>
        </el-table-column>

        <el-table-column label="标题" prop="title" align="center">
          <template slot-scope="{ row }">
            <span>{{ row.title||'--' }}</span>
          </template>
        </el-table-column>

        <el-table-column label="内容" prop="code" align="center">
          <template slot-scope="{ row }">
            <span>{{ row.content||'--' }}</span>
          </template>
        </el-table-column>

        <el-table-column label="摘要" prop="code" align="center">
          <template slot-scope="{ row }">
            <span>{{ row.summary||'--' }}</span>
          </template>
        </el-table-column>

        <el-table-column label="类型值" prop="type" align="center">
          <template slot-scope="{ row }">
            <span>{{ row.status||'--' }}</span>
          </template>
        </el-table-column>

        <el-table-column label="状态" class-name="status-col">
          <template slot-scope="{ row }">
            <el-tag :type="row.status | statusStyleFilter">{{ row.status | statusFilter }}</el-tag>
          </template>
        </el-table-column>
      </el-table>

      <pagination v-show="total > 0" :total="total" :page.sync="listQuery.pageNumber" :limit.sync="listQuery.pageSize" @pagination="getList" />

      <div class="footer">
        <el-button type="primary" @click="confirm()">确定</el-button>
        <el-button @click="cancel()">取消</el-button>
      </div>

    </el-dialog>
  </section>

</template>

<script>
/* import waves from '@/directive/waves' */ // waves directive
import Pagination from '@/components/Pagination' // secondary package based on el-pagination
// import SettingApi from '../../api/setting'
import ArticleApi from '../../api/article'

export default {
  name: 'ArticleSelectModal',
  components: { Pagination },
  // directives: { waves },
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
  props: {
    isShowed: {
      type: Boolean,
      default() {
        return false
      }
    }
  },
  data() {
    return {
      selectId: null,
      tableKey: 0,
      list: null,
      total: 0,
      listLoading: false,
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
        title: null,
        status: null
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
      downloadLoading: false,
      firstTypeId: '1405407770443837442'
    }
  },
  created() {
    // 1405407770443837442
    this.getList()
  },
  methods: {
    confirm() {
      this.$emit('confirm', this.selectId)
    },
    cancle() {
      this.$emit('cancle')
    },
    singleElection(row) {
      this.selectId = row.id
    },
    resetList() {
      this.listQuery = {
        pageNumber: 1,
        pageSize: 10,
        title: null,
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
    }

  }
}
</script>

<style scoped lang="scss">

.article-select-modal-ctn {
  .filter-container{
    margin-bottom: rpx(20);
  }
  .search-item {
    margin-right: 20px;
  }
}
</style>
