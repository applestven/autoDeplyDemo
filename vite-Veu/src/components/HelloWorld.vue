<template>
  <h1>{{ msg }}</h1>
  <button @click="count++">count is: {{ count }}</button>
  <p>测试是否成功持续化集成部署</p>
  <p>Edit <code>components/HelloWorld.vue</code> to test hot module replacement.</p>
  <p>hello  gitAction</p>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data() {
    return {
      count: 0
    }
  }
}
</script>
