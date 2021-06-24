/** When your routing table is too long, you can split it into small modules **/

import Layout from '@/layout'

/* platform:平台介绍。
corporation：业务合作
contractus：联系我们
clause：免责声明 */

const tableRouter = {
  path: '/setting',
  component: Layout,
  redirect: '/setting/platform',
  name: 'Setting',
  meta: {
    title: '基础设置',
    icon: 'table'
  },
  children: [
	  {
	    path: 'websetting',
	    component: () => import('@/views/setting/websetting'),
	    name: 'Websetting',
	    meta: { title: '网站设置' }
	  },
    {
      path: 'platform',
      component: () => import('@/views/setting/platform'),
      name: 'Platform',
      meta: { title: '平台介绍' }
    },
    {
      path: 'corporation',
      component: () => import('@/views/setting/corporation'),
      name: 'Corporation',
      meta: { title: '业务合作' }
    },
    {
      path: 'contractus',
      component: () => import('@/views/setting/contractus'),
      name: 'Contractus',
      meta: { title: '联系我们' }
    },
    {
      path: 'clause',
      component: () => import('@/views/setting/clause'),
      name: 'Clause',
      meta: { title: '免责声明' }
    },
    {
      path: 'articletype',
      component: () => import('@/views/setting/articletype'),
      name: 'Articletype',
      meta: { title: '类型管理' }
    },
    {
      path: 'article-second-type',
      component: () => import('@/views/setting/article-second-type'),
      name: 'ArticleSecondtype',
      meta: { title: '二级类型管理' },
      hidden: true
    },
    {
      path: 'jobs',
      component: () => import('@/views/setting/jobs'),
      name: 'jobs',
      meta: { title: '定时任务' }

    }
  ]
}
export default tableRouter
