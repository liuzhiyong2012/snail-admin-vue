<template>
  <div class="platform-ctn">
    <h6 class="header-ctn">
      平台介绍
    </h6>
    <div class="content-ctn">
      <tinymce v-model="setting.content" :height="300" />
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
  name: 'Contractus',
  components: { Tinymce },
  data() {
    return {
      setting: {}
    }
  },
  created() {
    SettingApi.getSetting({
      flag: 'contractus'
    }).then((res) => {
      this.setting = res.datas
    })
  },
  methods: {
    updateSetting() {
      SettingApi.updateSetting(this.setting).then((res) => {
        // this.setting = res.datas
      })
    }
  }
}
</script>

<style scoped lang="scss">
.platform-ctn{
  margin-top: 20px;
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
