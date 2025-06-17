<template>
  <div>
    <HeroHome />
    <SectionIntro />
    <TravelPackages />
  </div>
</template>

<script>
import HeroHome from '@/components/HeroHome.vue'
import SectionIntro from '@/components/SectionIntro.vue'
import TravelPackages from '@/components/TravelPackages.vue'

export default {
  components: {
    HeroHome,
    SectionIntro,
    TravelPackages
  }
}
</script>
