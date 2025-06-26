<template>
  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
    <div v-for="pkg in packages" :key="pkg.id" class="bg-white rounded-lg shadow p-4 flex flex-col">
      <img :src="pkg.photo" :alt="pkg.name" class="rounded h-48 object-cover mb-4">
      <h2 class="text-xl font-bold mb-2">{{ pkg.name }}</h2>
      <p class="text-gray-600 mb-2">{{ pkg.description }}</p>
      <span class="font-semibold text-blue-700 mb-2"> ${{ pkg.price }}</span>
      <span class="text-sm text-gray-500 mb-4">{{ pkg.type }}</span>
      <div class="mt-auto flex gap-2">
        <router-link :to="`/edit_travel_package/${pkg.id}`" class="bg-yellow-400 text-white px-3 py-1 rounded hover:bg-yellow-500">Modifier</router-link>https://www.perplexity.ai/spaces/templates/
        <button @click="deletePackage(pkg.id)" class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600">Supprimer</button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      packages: []
    }
  },
  methods: {
    fetchPackages() {
      axios.get('http://localhost:3000/api/travel_packages')
        .then(res => { this.packages = res.data })
        .catch(err => { console.error(err) })
    },
    deletePackage(id) {
      if (confirm('Voulez-vous vraiment supprimer ce forfait ?')) {
        axios.delete(`http://localhost:3000/api/travel_packages/${id}`)
          .then(() => { this.fetchPackages() })
          .catch(err => { console.error(err) })
      }
    }
  },
  mounted() {
    this.fetchPackages()
  }
}
</script>
