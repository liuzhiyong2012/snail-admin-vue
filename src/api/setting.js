import request from '@/utils/request'

export default {
  getSetting(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/setting/getSetting',
      method: 'post',
      data: params
    })
  },
  updateSetting(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/setting/updateSetting',
      method: 'post',
      data: params
    })
  },
  getType(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/type/page',
      method: 'post',
      data: params
    })
  },
  insertType(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/type/insert',
      method: 'post',
      data: params
    })
  },
  deleteType(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/type/delete',
      method: 'post',
      data: params
    })
  },
  updateType(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/type/update',
      method: 'post',
      data: params
    })
  }

}
