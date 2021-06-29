/** When your routing table is too long, you can split it into small modules **/

import Layout from '@/layout'

const tableRouter = {
  path: '/advertise',
  component: Layout,
  redirect: '/table/complex-table',
  name: 'Advertise',
  meta: {
    title: '广告管理',
    icon: 'table'
  },
  children: [
    {
      path: 'list',
      component: () => import('@/views/advertise/index'),
      name: 'AdvertiseList',
      meta: { title: '广告列表' }
    },
    {
      path: 'edit',
      component: () => import('@/views/advertise/advertise-edit'),
      name: 'AdvertiseEdit',
      meta: { title: '编辑广告' },
      hidden: true
    },
	{
	  path: 'position',
	  component: () => import('@/views/advertise/advertise-position'),
	  name: 'AdvertisePosition',
	  meta: { title: '位置管理' },

	}

  ]
}
export default tableRouter
