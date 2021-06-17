import request from '@/utils/request'

export default {
  getFrontUserList(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/frontuser/page',
      method: 'post',
      data: params
    })
  },
  deleteById(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/frontuser/deleteById',
      method: 'post',
      data: params
    })
  },
  updateFrontUser(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/frontuser/update',
      method: 'post',
      data: params
    })
  }
}

