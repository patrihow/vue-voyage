import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AboutView from '../views/AboutView.vue'
import TravelPackagesView from '../views/TravelPackagesView.vue'
import EditTravelPackagesView from '../views/EditTravelPackagesView.vue'
import AddTravelPackagesView from '../views/AddTravelPackagesView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    component: AboutView
  },
  {
    path: '/travel_package/:id',
    name: 'travel_package',
    component: TravelPackagesView
  },
  {
    path: '/add_travel_package',
    name: 'add_travel_package',
    component: AddTravelPackagesView
  },
  {
    path: '/edit_travel_package/:id',
    name: 'edit_travel_package',
    component: EditTravelPackagesView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
