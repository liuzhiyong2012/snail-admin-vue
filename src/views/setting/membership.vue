<template>
  <div class="platform-ctn">
    <h6 class="header-ctn">
      申请会员
    </h6>
    <div class="content-ctn">
      <tinymce v-model="setting.content" :height="500" />
    </div>
    <div class="footer-ctn">
      <el-button type="primary" @click="updateSetting()">更新</el-button>
    </div>

  </div>
</template>

<script>
import Tinymce from '@/components/Tinymce'
import SettingApi from '../../api/setting'

export default {
  name: 'Membership',
  components: { Tinymce },
  data() {
    return {
      setting: {}
    }
  },
  created() {
    SettingApi.getSetting({
      flag: 'membership'
    }).then((res) => {
      this.setting = res.datas
    })
  },
  methods: {
    updateSetting() {
      SettingApi.updateSetting(this.setting).then((res) => {
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
.platform-ctn{
  margin-top: 20px;
  padding: 0 120px;
  .header-ctn{
    text-align: center;
    font-size: 32px;
  }
  .content-ctn{
    padding:0 20px;
  }
  .footer-ctn{
    padding-top:60px;
    text-align: center;
  }
}
</style>
