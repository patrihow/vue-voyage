<template>
  <header class="bg-green-600 text-white py-4">
    <div class="container mx-auto flex justify-between items-center">
      <div class="text-xl font-bold">Colombie</div>
      <nav>
        <ul class="flex space-x-4">
          <li><router-link to="/" class="hover:text-gray-300">Accueil</router-link></li>
          <li><router-link to="/about" class="hover:text-gray-300">À propos</router-link></li>
          <li><router-link to="/destinations" class="hover:text-gray-300">Destinations</router-link></li>
        </ul>
      </nav>
    </div>
  </header>
</template>

<script>
export default {
  name: 'NavBar'
}
</script>
