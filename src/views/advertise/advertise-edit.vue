<template>
  <section class="advertise-edit-ctn">
    <div class="content-ctn">
      <el-form ref="postForm" :model="postForm" :rules="rules" label-width="100px" class="demo-postForm">
        <el-form-item label="广告名" prop="name"><el-input v-model="postForm.name" placeholder="广告名" style="width: 200px" /></el-form-item>
        <el-form-item label="广告区域" prop="region">
          <el-select v-model="postForm.positionId" placeholder="广告位置" clearable style="width: 200px" class="search-item filter-item">
            <el-option v-for="(item, index) in positionList" :key="index" :label="item.name" :value="item.id" />
          </el-select>
        </el-form-item>
        <el-form-item label="生效时间" required>
          <el-date-picker v-model="postForm.startTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="开始时间" style="width:200px" />

          <span>-</span>

          <el-time-picker v-model="postForm.endTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="结束时间" style="width: 200px" />
        </el-form-item>

        <el-form-item label="状态" prop="status">
          <el-select v-model="postForm.status" placeholder="状态" clearable style="width: 120px" class="search-item filter-item">
            <el-option v-for="(item, index) in statusList" :key="index" :label="item.name" :value="item.value" />
          </el-select>
        </el-form-item>

        <el-form-item label="广告类型" prop="type">
          <el-radio-group v-model="postForm.type">
            <el-radio label="1">关联贴子</el-radio>
            <el-radio label="2">自定义编辑</el-radio>
            <el-radio label="3">外部链接</el-radio>
          </el-radio-group>
        </el-form-item>

        <el-form-item v-if="postForm.type == '1'" label="关联贴子" prop="type">
          <el-col :span="20">
            <span v-if="!postForm.articleId" class="select-btn" @click="openArticleModal()">点击此处选择需要关联的用户贴子</span>

            <span v-if="postForm.articleId" class="select-btn"><<{{ postForm.articleId }}>></span>

            <span v-if="postForm.articleId" class="select-btn" @click="openArticleModal()">重新选择</span>

          </el-col>
        </el-form-item>

        <div v-if="postForm.type == '2'" class="custom-ctn">
          <el-form-item label="文本内容" prop="content">
            <Tinymce ref="editor" v-model="postForm.content" :height="400" /></el-form-item></div>
        </el-form-item>

        <div v-if="postForm.type == '3'" class="custom-ctn">
          <el-form-item label="外部链接" prop="linkUrl"><el-input v-model="postForm.linkUrl" placeholder="请输入外部链接" style="width: 200px" /></el-form-item>
        </div>
        <el-form-item>
          <el-button type="primary" @click="submitForm('postForm')">{{ operTxt[opertype] }}</el-button>
          <!-- <el-button @click="resetForm('postForm')">重置</el-button> -->
        </el-form-item>
      </el-form>
    </div>
    <article-select-modal :is-showed="showArticleSelectModal" @confirm="articleSelect" @cancle="articleCancel" />
  </section>
</template>

<script>
import ArticleSelectModal from '../../components/ArticleSelectModal/index.vue'
import Tinymce from '@/components/Tinymce'
import TypeApi from '../../api/type'
import AdvertiseApi from '../../api/advertise'
export default {
  components: {
    Tinymce,
    ArticleSelectModal
  },
  data() {
    return {

      statusList: [{ name: '启用', value: '1' }, { name: '冻结', value: '2' }],

      opertype: 'add', // 'add'||'edit'
      operTxt: {
        'add': '新增',
        'edit': '修改'
      },
      showArticleSelectModal: false,
      positionList: [],
      postForm: {
        name: '',
        positionId: '',
        startTime: '',
        endTime: '',
        type: '',
        articleId: '',
        content: '',
        linkUrl: '',
        status: '1'
      },
      rules: {
        name: [{ required: true, message: '请输入广告名', trigger: 'blur' }, { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }],
        startTime: [{ required: true, message: '请输入开始时间', trigger: 'blur' }],
        endTime: [{ required: true, message: '请输入结束时间', trigger: 'blur' }],
        positionId: [{ required: true, message: '请选择广告位置', trigger: 'blur' }]
      }
    }
  },
  created() {
    this.opertype = this.$route.query.opertype

    if (this.opertype == 'add') {
      this.postForm = {
        id: '',
        name: '',
        positionId: '',
        startTime: '',
        endTime: '',
        type: '1',
        articleId: '',
        content: '',
        linkUrl: '',
        status: '1'
      }
    } else {
      // 根据广告id获取
      AdvertiseApi.getAdvertise({
        pageNumber: 1,
        pageSize: 1
      }).then((res) => {
        const item = res.datas[0]
        this.postForm = {
          id: item.id,
          name: item.name,
          positionId: item.positionId,
          startTime: item.startTime,
          endTime: item.endTime,
          type: item.type,
          articleId: item.articleId,
          content: item.content,
          linkUrl: item.linkUrl,
          status: item.status
        }
      })
    }

    this.getPositionList()
  },
  methods: {
    getPositionList() {
      TypeApi.getType({
        parentId: '1406277910093938689',
        pageNumber: 1,
        pageSize: 1000
      }).then(res => {
        this.positionList = res.datas
      })
    },
    articleSelect(articleId) {
      this.postForm.articleId = articleId
      this.showArticleSelectModal = false
    },
    articleCancel() {
      this.showArticleSelectModal = false
    },
    submitForm(formName) {
      if (this.opertype == 'add') {
        this.$refs[formName].validate(valid => {
          if (valid) {
            AdvertiseApi.insertAdvertise(this.postForm).then(res => {
              this.$notify({
                title: '成功',
                message: '成功新增一条记录',
                type: 'success',
                duration: 2000
              })
              this.$router.push({
                path: '/advertise/list'
              })
            })
          } else {
            return false
          }
        })
      } else {
        this.$refs[formName].validate(valid => {
          if (valid) {
            AdvertiseApi.updateAdvertise(this.postForm).then(res => {
              this.$notify({
                title: '成功',
                message: '成功修改一条记录',
                type: 'success',
                duration: 2000
              })
              this.$router.push({
                path: '/advertise/list'
              })
            })
          } else {
            return false
          }
        })
      }
    },
    resetForm(formName) {
      this.$refs[formName].resetFields()
    },
    openArticleModal() {
      // debugger
      this.showArticleSelectModal = true
    }
  }
}
</script>

<style scoped="" lang="scss">
.advertise-edit-ctn {
  .content-ctn {
    padding-top: 60px;
    width: 900px;
    margin: auto;

    .select-btn {
      font-style: italic;
      color: rgb(24, 144, 255);
    }
  }
}
</style>
