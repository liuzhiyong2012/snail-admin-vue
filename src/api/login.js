import axios from 'axios'
import request from '@/utils/request'
/* import config from './config' */

axios.defaults.baseURL = process.env.VUE_APP_BASE_API

export default {
  login(params) {
    return request({
      url: ('http://localhost:9080' || process.env.VUE_APP_BASE_API) + '/admin/login',
      method: 'post',
      data: params
    })
  }
}
