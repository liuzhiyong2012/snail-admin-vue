import request from '@/utils/request'

export default {

  getAdvertise(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise/page',
      method: 'post',
      data: params
    })
  },
  insertAdvertise(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise/insert',
      method: 'post',
      data: params
    })
  },
  deleteAdvertise(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise/delete',
      method: 'post',
      data: params
    })
  },
  updateAdvertise(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise/update',
      method: 'post',
      data: params
    })
  },
  getAllAdvertise(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise/all',
      method: 'post',
      data: params
    })
  }

}
