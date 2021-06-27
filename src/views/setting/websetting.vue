<template>
  <section class="web-setting-ctn">

    <div class="main-ctn">
      <el-form ref="postForm" :model="postForm" :rules="rules" label-width="120px" class="demo-postForm">

        <el-form-item label="网站logo文字" prop="logoText">
          <el-input v-model="postForm.logoText" placeholder="请输入网站logo文字" style="width: 200px" />
        </el-form-item>

        <el-form-item label="网站主题色" prop="region">
          <el-select v-model="postForm.primaryColor" placeholder="网站主题色" clearable style="width: 200px" class="search-item filter-item">
            <el-option v-for="(item, index) in primaryColorList" :key="index" :label="item.name" :value="item.value" />
          </el-select>
        </el-form-item>

        <el-form-item label="搜索关键词" prop="keywords">
          <multi-field v-model="postForm.keywords" :conf="keywordsConf" />
        </el-form-item>

        <el-form-item label="敏感词" prop="sensitiveWords">
          <multi-field v-model="postForm.sensitiveWords" :conf="sensitiveWordsConf" />
        </el-form-item>

        <el-form-item label="友情链接" prop="friendLinks">
          <multi-field v-model="postForm.friendLinks" :conf="friendLinksConf" />
        </el-form-item>

        <el-form-item label="用户协议" prop="protocal">
          <tinymce v-model="postForm.protocal" />
        </el-form-item>

        <el-form-item>
          <el-button type="primary" @click="updateSetting()">更新</el-button>
        </el-form-item>
      </el-form>
    </div>
  </section>
</template>

<script>
import Tinymce from '@/components/Tinymce'
import SettingApi from '../../api/setting'
import MultiField from './components/MultiField.vue'

export default {
  name: 'WebSetting',
  components: {
    Tinymce,
    MultiField
  },
  data() {
    return {
      keywordsConf: {
        hideValue: true,
        nameHolder: '请输入关键词',
        valueHolder: ''
      },
      friendLinksConf: {
        hideValue: false,
        nameHolder: '请输入链接名',
        valueHolder: '请输入链接地址'
      },
      sensitiveWordsConf: {
        hideValue: true,
        nameHolder: '请输入敏感词',
        valueHolder: ''
      },
      primaryColorList: [
        { name: '默认主题色(#6466ff)', value: 'theme-blue' },
        { name: '黄色主题色(#ffff00)', value: 'theme-yellow' },
        { name: '红色主题色(#ff0033)', value: 'theme-red' },
        { name: '紫色主题色(#6600ff)', value: 'theme-purple' },
        /* { name: '白主题色(#ffffff)', value: 'theme-white' }, */
        { name: '黑色主题色(#333333)', value: 'theme-black' }
      ],
      postForm: {
        logoText: '',
        keywords: [],
        protocal: '',
        friendLinks: [],
        primaryColor: '',
        sensitiveWords: []

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
    SettingApi.getSetting({
      flag: 'setting'
    }).then((res) => {
      const setting = res.datas
      setting.keywords = setting.keywords ? JSON.parse(setting.keywords) : []
      setting.sensitiveWords = setting.sensitiveWords ? JSON.parse(setting.sensitiveWords) : []
      setting.friendLinks = setting.friendLinks ? JSON.parse(setting.friendLinks) : []
      /* this.setting = */
      this.postForm = setting
    })
  },
  methods: {
    updateSetting() {
      const setting = JSON.parse(JSON.stringify(this.postForm))
      setting.keywords = setting.keywords ? JSON.stringify(setting.keywords) : ''
      setting.sensitiveWords = setting.sensitiveWords ? JSON.stringify(setting.sensitiveWords) : ''
      setting.friendLinks = setting.friendLinks ? JSON.stringify(setting.friendLinks) : ''
      debugger
      SettingApi.updateSetting(setting).then((res) => {
        this.$notify({
          title: '修改成功',
          message: '修改成功',
          type: 'success',
          duration: 2000
        })
      })
    }
  }
}
</script>

<style scoped lang="scss">
 .web-setting-ctn{
      .main-ctn{
        padding: 200px;
        padding-top: 40px;
      }
    }
</style>
