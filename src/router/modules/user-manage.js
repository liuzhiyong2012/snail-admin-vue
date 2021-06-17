/** When your routing table is too long, you can split it into small modules **/

import Layout from '@/layout'

const tableRouter = {
  path: '/user',
  component: Layout,
  redirect: '/table/complex-table',
  name: 'User',
  meta: {
    title: '用户管理',
    icon: 'table'
  },
  children: [
    {
      path: 'manage',
      component: () => import('@/views/user-manage/index'),
      name: 'UserManage',
      meta: { title: '用户管理' }
    }
  ]
}
export default tableRouter
