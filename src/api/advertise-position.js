import request from '@/utils/request'

export default {

  getAdvertisePosition(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise_position/page',
      method: 'post',
      data: params
    })
  },
  insertAdvertisePosition(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise_position/insert',
      method: 'post',
      data: params
    })
  },
  deleteAdvertisePosition(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise_position/delete',
      method: 'post',
      data: params
    })
  },
  updateAdvertisePosition(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise_position/update',
      method: 'post',
      data: params
    })
  },
  getAllAdvertisePosition(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/advertise_position/all',
      method: 'post',
      data: params
    })
  }

}
