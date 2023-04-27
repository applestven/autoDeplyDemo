const Koa = require('koa')

const app = new Koa()

app.use((ctx, next) => {
  ctx.body = 'hello world gitaction11123走你 <br/> 测试接口是否更新'
})

app.listen(3000, () => {
  console.log('server is running on http://localhost:3000')
})