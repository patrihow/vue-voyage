<template>
  <div id="app">
    <Header />
    <router-view />
    <MainFooter />
  </div>
</template>

<script>
import MainFooter from './components/MainFooter.vue'
import Header from './components/NavBar.vue'

export default {
  components: {
    Header,
    MainFooter
  }
}
</script>
