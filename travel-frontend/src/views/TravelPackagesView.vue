<template>
  <div class="border-t border-gray-100">
    <section class="py-5">
      <div class="container px-4 px-lg-5 my-5">
        <div class="grid sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
          <div v-for="(package, index) in travelPackages" :key="package.id" class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
            <img class="p-8 rounded-t-lg" :src="package.photo" :alt="package.name" />
            <div class="px-5 pb-5 text-center">
              <h5 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white mb-2">{{ package.name }}</h5>
              <div class="mb-2">
                <span class="text-3xl font-bold text-gray-900 dark:text-white">{{ package.price.toFixed(2) }}</span>
              </div>
              <p class="text-lg leading-relaxed mb-5">{{ package.description }}</p>
              <div class="flex items-center justify-between mt-2">
                <input v-model.number="package.quantity" type="number" class="w-[80px] bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                <button @click="addToCart(package.name, index)" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add to cart</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import TravelPackageService from '@/services/TravelPackageService';

export default {
  data() {
    return {
      travelPackages: []
    };
  },
  methods: {
    fetchTravelPackages() {
      TravelPackageService.getAll()
        .then(response => {
          this.travelPackages = response.data;
        })
        .catch(error => {
          console.error('Error fetching travel packages:', error);
        });
    },
    addToCart(packageName, index) {
      // Implementar la lógica para agregar el paquete al carrito
      console.log(`Added ${packageName} to cart.`);
    }
  },
  mounted() {
    this.fetchTravelPackages();
  }
}
</script>
