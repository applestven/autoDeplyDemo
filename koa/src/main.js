const Koa = require('koa')

const app = new Koa()

app.use((ctx, next) => {
  ctx.body = 'hello world 测试前后端更新'
})

app.listen(3000, () => {
  console.log('server is running on http://localhost:3000')
})