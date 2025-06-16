<template>
  <section class="bg-green-100 dark:bg-gray-900">
    <div class="gap-16 items-center py-8 px-4 mx-auto max-w-screen-xl lg:grid lg:grid-cols-2 lg:py-16 lg:px-6">
      <div class="font-light text-gray-700 sm:text-lg dark:text-gray-400">
        <h2 class="mb-4 text-4xl tracking-tight font-extrabold text-green-800 dark:text-white">Bienvenue en Colombie, un véritable paradis sur Terre</h2>
        <p class="mb-4">Entre plages de sable blanc, montagnes majestueuses, forêts tropicales luxuriantes et villes pleines de charme, la Colombie t’invite à vivre une aventure unique.</p>
        <p>Découvre la richesse de sa culture, goûte à sa gastronomie chaleureuse et explore des sites naturels à couper le souffle comme le Parc Tayrona, le Rocher de Guatapé, ou la mystérieuse Cité Perdue.
Que tu sois amateur de randonnée, de plages ou de vie urbaine, la Colombie t’accueille les bras ouverts pour des vacances inoubliables.</p>
      </div>
      <div class="grid grid-cols-2 gap-4 mt-8">
        <img class="w-full rounded-lg col-span-2" :src="destination1" alt="Parc Tayrona, Colombie">
        <img class="w-full rounded-lg" :src="destination3" alt="Parc Tayrona, Colombie">
        <img class="w-full rounded-lg" :src="destination4" alt="Parc Tayrona, Colombie">
      </div>
    </div>
  </section>
</template>

<script>
import destination1 from '@/assets/images/tayrona.jpg'
import destination3 from '@/assets/images/tayrona2.jpg'
import destination4 from '@/assets/images/tayrona3.jpg'

export default {
  name: 'SectionIntro',
  data () {
    return {
      destination1,
      destination3,
      destination4
    }
  }
}
</script>
