<template>
  <section class="relative h-screen bg-cover bg-center"
    :style="{ backgroundImage: `url(${heroImage})` }">
    <div class="absolute inset-0 bg-gradient-to-b from-transparent via-blue-700 to-green-700 opacity-70"></div>
    <div class="container mx-auto flex flex-col items-center justify-center text-center h-full relative z-10">
      <h1 class="text-4xl md:text-6xl font-bold mb-4 text-white">
        Trouve tes vacances de rêve en Colombie
      </h1>
      <p class="mb-8 text-white" style="font-size: 24px;">Découvre nos suggestions personnalisées selon la saison, tes envies et ton budget</p>
      <div class="flex justify-center space-x-4">
        <button class="bg-blue-500 hover:bg-blue-400 text-white font-semibold py-2 px-4 rounded">Où veux-tu partir?</button>
        <button class="border border-white hover:bg-white hover:text-indigo-600 text-white font-semibold py-2 px-4 rounded">
           Tu ne sais pas où aller? →</button>
      </div>
      <div class="mt-8">
      </div>
    </div>
  </section>
</template>

<script>
import heroImage from '@/assets/images/hero.jpg'
export default {
  name: 'HeroHome',
  data () {
    return {
      heroImage
    }
  }
}
</script>
