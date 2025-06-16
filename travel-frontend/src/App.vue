<template>
  <div id="app">
    <Header />
    <router-view />
  </div>
</template>

<script>
import Header from './components/NavBar.vue'

export default {
  components: {
    Header
  }
}
</script>

<style>
</style>
