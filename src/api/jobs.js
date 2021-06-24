import request from '@/utils/request'

export default {
	getJobs(params) {
	  return request({
	    url: process.env.VUE_APP_API_PREFIX + '/jobs/page',
	    method: 'post',
	    data: params
	  })
	},
	insertJobs(params) {
	  return request({
	    url: process.env.VUE_APP_API_PREFIX + '/jobs/insert',
	    method: 'post',
	    data: params
	  })
	},
	deleteJobs(params) {
	  return request({
	    url: process.env.VUE_APP_API_PREFIX + '/jobs/delete',
	    method: 'post',
	    data: params
	  })
	},
	updateJobs(params) {
	  return request({
	    url: process.env.VUE_APP_API_PREFIX + '/jobs/update',
	    method: 'post',
	    data: params
	  })
	}
}

