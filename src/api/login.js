import axios from 'axios'
import request from '@/utils/request'
/* import config from './config' */

axios.defaults.baseURL = process.env.VUE_APP_API_PREFIX

export default {
  login(params) {
    return request({
      url: (process.env.VUE_APP_API_PREFIX) + '/admin/login',
      method: 'post',
      data: params
    })
  }
}
