<template>
  <div class="article-edit-ctn">
    <el-form ref="postForm" :model="postForm" :rules="rules" label-width="100px" class="demo-postForm">
      <el-form-item label="一级分类" prop="firstTypeId">
        <el-select v-model="postForm.firstTypeId" placeholder="一级分类" clearable style="width: 120px" class="search-item filter-item" @change="firstTypeChange">
          <el-option v-for="(item, index) in firstTypeList" :key="index" :label="item.name" :value="item.id" />
        </el-select>
      </el-form-item>
      <!-- 一级分类 二级分类 -->
      <el-form-item label="二级分类" prop="secondTypeId">
        <el-select v-model="postForm.secondTypeId" placeholder="二级分类" clearable style="width: 120px" class="search-item filter-item">
          <el-option v-for="(item, index) in secondTypeList" :key="index" :label="item.name" :value="item.id" />
        </el-select>
      </el-form-item>

      <el-form-item label="标题" prop="title"><el-input v-model="postForm.title" placeholder="标题" style="width: 200px" /></el-form-item>

      <el-form-item label="摘要">
        <el-input v-model="postForm.summary" type="textarea" />
      </el-form-item>

      <el-form-item label="封面图">
        <el-upload
          class="avatar-uploader"
          :action="imgUploadUrl"
          :show-file-list="false"
          :on-success="handleAvatarSuccess"
          :on-remove="handleRemove"
          :before-upload="beforeAvatarUpload"
        >
          <img v-if="postForm.imageUrl" :src="postForm.imageUrl" class="avatar">
          <span v-if="postForm.imageUrl" class="el-upload-action" @click.stop="handleRemove()">
            <i class="el-icon-delete" />
          </span>
          <i v-else class="el-icon-upload2 avatar-uploader-icon" stop />
        </el-upload>
      </el-form-item>

      <el-form-item label="发布时间" required>
        <el-date-picker v-model="postForm.publishTime" type="datetime" format="yyyy-MM-dd HH:mm" value-format="yyyy-MM-dd HH:mm:ss" placeholder="开始时间" style="width:200px" />
      </el-form-item>

      <el-form-item label="状态" prop="status">
        <el-select v-model="postForm.status" placeholder="状态" clearable style="width: 120px" class="search-item filter-item">
          <el-option v-for="(item, index) in statusList" :key="index" :label="item.name" :value="item.value" />
        </el-select>
      </el-form-item>

      <el-form-item label="发帖方式" prop="type">
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
import ArticleApi from '../../api/article'
export default {
  components: {
    Tinymce,
    ArticleSelectModal
  },
  data() {
    return {
      imgUploadUrl: 'http://127.0.0.1:9080/common/upload',
      firstTypeList: [],
      secondTypeList: [],
      statusList: [{ name: '启用', value: '1' }, { name: '冻结', value: '2' }],
      opertype: 'add', // 'add'||'edit'
      operTxt: {
        'add': '新增',
        'edit': '修改'
      },
      showArticleSelectModal: false,
      positionList: [],
      postForm: {
        firstTypeId: '',
        secondTypeId: '',
        title: '',
        summary: '',
        publishTime: '',
        status: '',
        type: '1',
        articleId: '',
        content: '',
        linkUrl: ''
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
        firstTypeId: '',
        secondTypeId: '',
        title: '',
        summary: '',
        publishTime: '',
        status: '',
        type: '1',
        articleId: '',
        content: '',
        linkUrl: '',
        imageUrl: ''
      }
    } else {
      // 根据广告id获取
      ArticleApi.getArticle({
        pageNumber: 1,
        pageSize: 1
      }).then((res) => {
        const item = res.datas[0]
        this.postForm = {
          id: item.id,
          firstTypeId: item.firstTypeId,
          secondTypeId: item.secondTypeId,
          title: item.title,
          imageUrl: item.imageUrl,
          summary: item.summary,
          publishTime: item.publishTime,
          status: item.status,
          type: item.type,
          articleId: item.articleId,
          content: item.content,
          linkUrl: item.linkUrl
        }
      })
    }

    this.getFirstTypeList()
  },
  methods: {
    // 移除图片
    handleRemove() {
      this.postForm.imageUrl = ''
    },
    // 上传成功回调
    handleAvatarSuccess(res, file) {
      this.postForm.imageUrl = res.datas.url
    },
    // 上传前格式和图片大小限制
    beforeAvatarUpload(file) {
      const type = file.type === 'image/jpeg' || 'image/jpg' || 'image/webp' || 'image/png'
      const isLt2M = file.size / 1024 / 1024 < 2
      if (!type) {
        this.$message.error('图片格式不正确!(只能包含jpg，png，webp，JPEG)')
      }
      if (!isLt2M) {
        this.$message.error('上传图片大小不能超过 2MB!')
      }
      return type && isLt2M
    },
    firstTypeChange($event) {
      this.firstTypeId = $event
      this.getSecondTypeList()
    },
    getFirstTypeList() {
      TypeApi.getType({
        pageSize: 1000,
        pageNumber: 1,
        type: 'menu'
      }).then((res) => {
        // debugger
        this.firstTypeList = res.datas

        if (this.firstTypeId) {
          this.getSecondTypeList()
        }
      })
    },
    getSecondTypeList() {
      TypeApi.getType({
        pageSize: 1000,
        pageNumber: 1,
        parentId: this.firstTypeId
      }).then((res) => {
        // debugger
        this.secondTypeList = res.datas
      })
    },
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
            ArticleApi.insertArticle(this.postForm).then(res => {
              this.$notify({
                title: '成功',
                message: '成功新增一条记录',
                type: 'success',
                duration: 2000
              })
              this.$router.push({
                path: '/article/list'
              })
            })
          } else {
            return false
          }
        })
      } else {
        this.$refs[formName].validate(valid => {
          if (valid) {
            ArticleApi.updateArticle(this.postForm).then(res => {
              this.$notify({
                title: '成功',
                message: '成功修改一条记录',
                type: 'success',
                duration: 2000
              })
              this.$router.push({
                path: '/article/list'
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
.article-edit-ctn {
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

.avatar-uploader{
  width: 120PX;
  height: 120px;
  border-radius: 50%;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  // background: url('../assets/img/defaultHead.jpg') no-repeat;
  background-size: 100% 100%;
}
.avatar-uploader-icon{
  font-size: 0;
  color: #fff;
  width: 120px;
  height: 120px;
  line-height: 120px;
  text-align: center;
}
.avatar-uploader-icon:hover{
  font-size: 28px;
  background-color: rgba(0, 0, 0, .3);
}
.avatar {
  position: relative;
  width: 120px;
  height: 120px;
  display: block;
}
.el-upload-action {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  height: 100%;
  font-size: 0;
  color: #fff;
  text-align: center;
  line-height: 120px;

}
.el-upload-action:hover {
  font-size: 20px;
  background-color: #000;
  background-color: rgba(0, 0, 0, .3)
}
</style>
