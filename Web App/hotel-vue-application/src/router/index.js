import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";
import ViewRooms from "../views/ViewRooms.vue"
import ViewOrder from '../components/Tables/OrdersTableComponent.vue'
const routes = [
  {
    path: "/",
    name: "home",
    component: HomeView,
  },
  {
    path: "/rooms",
    name: "rooms",
    component: ViewRooms,
  },
  {
    path: "/orders",
    name: "orders",
    component: ViewOrder,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
