<template>
  <div class="max-w-lg mx-auto mt-8 bg-white p-6 rounded shadow">
    <h2 class="text-2xl font-bold mb-4">Modifier le forfait</h2>
    <form @submit.prevent="updatePackage">
      <input v-model="form.name" type="text" class="input mb-2" required>
      <textarea v-model="form.description" class="input mb-2" required></textarea>
      <input v-model.number="form.price" type="number" class="input mb-2" required>
      <input v-model="form.photo" type="text" class="input mb-2" required>
      <select v-model="form.type" class="input mb-4" required>
        <option value="">Catégorie</option>
        <option>Climat tropical côtier</option>
        <option>Climat printanier</option>
        <option>Climat chaud et humide</option>
        <option>Climat tempéré de montagne</option>
        <option>Climat équatorial humide</option>
        <option>Climat doux de montagne</option>
      </select>
      <button type="submit" class="bg-yellow-500 text-white px-4 py-2 rounded hover:bg-yellow-600">Mettre à jour</button>
    </form>
    <div v-if="message" class="mt-4 text-green-600">{{ message }}</div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      form: { name: '', description: '', price: '', photo: '', type: '' },
      message: ''
    }
  },
  mounted() {
    axios.get(`http://localhost:3000/api/travel_packages/${this.$route.params.id}`)
      .then(res => { this.form = res.data })
      .catch(err => { this.message = 'Erreur de chargement.' })
  },
  methods: {
    updatePackage() {
      axios.put(`http://localhost:3000/api/travel_packages/${this.$route.params.id}`, this.form)
        .then(() => { this.message = 'Forfait mis à jour !' })
        .catch(err => { this.message = 'Erreur lors de la mise à jour.' })
    }
  }
}
</script>
