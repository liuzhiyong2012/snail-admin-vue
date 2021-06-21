/** When your routing table is too long, you can split it into small modules **/

import Layout from '@/layout'

const tableRouter = {
  path: '/article',
  component: Layout,
  redirect: '/table/complex-table',
  name: 'Article',
  meta: {
    title: '贴子管理',
    icon: 'table'
  },
  children: [
    {
      path: 'list',
      component: () => import('@/views/article/index'),
      name: 'ArticleList',
      meta: { title: '贴子管理' }
    },
    {
      path: 'edit',
      component: () => import('@/views/article/article-edit'),
      name: 'ArticleEdit',
      meta: { title: '编辑贴子' },
      hidden: true
    }

  ]
}
export default tableRouter
