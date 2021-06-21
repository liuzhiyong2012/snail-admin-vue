import request from '@/utils/request'

export default {
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

