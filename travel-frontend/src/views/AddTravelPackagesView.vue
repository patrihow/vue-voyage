<template>
  <div class="max-w-lg mx-auto mt-8 bg-white p-6 rounded shadow">
    <h2 class="text-2xl font-bold mb-4">Ajouter un nouveau forfait</h2>
    <form @submit.prevent="addPackage">
      <input v-model="form.name" type="text" placeholder="Nom du forfait" class="input mb-2" required>
      <textarea v-model="form.description" placeholder="Description" class="input mb-2" required></textarea>
      <input v-model.number="form.price" type="number" placeholder="Prix" class="input mb-2" required>
      <input v-model="form.photo" type="text" placeholder="URL de l'image" class="input mb-2" required>
      <select v-model="form.type" class="input mb-4" required>
        <option value="">Catégorie</option>
        <option>Climat tropical côtier</option>
        <option>Climat printanier</option>
        <option>Climat chaud et humide</option>
        <option>Climat tempéré de montagne</option>
        <option>Climat équatorial humide</option>
        <option>Climat doux de montagne</option>
      </select>
      <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Ajouter</button>
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
  methods: {
    addPackage() {
      axios.post('http://localhost:3000/api/travel_packages', this.form)
        .then(() => {
          this.message = 'Forfait ajouté avec succès !'
          this.form = { name: '', description: '', price: '', photo: '', type: '' }
        })
        .catch(err => { this.message = 'Erreur lors de l\'ajout.' })
    }
  }
}
</script>
