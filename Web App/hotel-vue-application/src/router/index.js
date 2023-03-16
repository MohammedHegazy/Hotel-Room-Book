import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/ViewHome.vue";
import ViewRooms from "../views/ViewRooms.vue";
import ViewOrder from '../views/ViewOrders.vue';
import AcceptOrder from '../views/ViewAcceptOrder.vue';
import AddRoom from "../views/AddRoomTable.vue";
import EditRoom from "../views/ViewEditRoom.vue"
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
  {
    path:"/acceptorder",
    name:"acceptorder",
    component: AcceptOrder,
  },
  {
    path:"/addroom",
    name:"addroom",
    component: AddRoom,
  },
  {
    path:"/editroom",
    name:"editroom",
    component:EditRoom,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
