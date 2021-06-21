import request from '@/utils/request'

export default {
  insertArticle(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/article/insert',
      method: 'post',
      data: params
    })
  },

  deleteArticle(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/article/delete',
      method: 'post',
      data: params
    })
  },
  updateArticle(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/article/update',
      method: 'post',
      data: params
    })
  },

  getArticle(params) {
    return request({
      url: process.env.VUE_APP_API_PREFIX + '/article/page',
      method: 'post',
      data: params
    })
  }
}

export function fetchList(query) {
  return request({
    url: '/vue-element-admin/article/list',
    method: 'get',
    params: query
  })
}

export function fetchArticle(id) {
  return request({
    url: '/vue-element-admin/article/detail',
    method: 'get',
    params: { id }
  })
}

export function fetchPv(pv) {
  return request({
    url: '/vue-element-admin/article/pv',
    method: 'get',
    params: { pv }
  })
}

export function createArticle(data) {
  return request({
    url: '/vue-element-admin/article/create',
    method: 'post',
    data
  })
}

export function updateArticle(data) {
  return request({
    url: '/vue-element-admin/article/update',
    method: 'post',
    data
  })
}
