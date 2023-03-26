import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/ViewHome.vue";
import ViewRooms from "../views/ViewRooms.vue";
import ViewOrder from '../views/ViewOrders.vue';
import AcceptOrder from '../views/ViewAcceptOrder.vue';
import AddRoom from "../views/AddRoomTable.vue";
import EditRoom from "../views/ViewEditRoom.vue";
import EditProfile from "../views/ViewEditAdmin.vue";
import Profile from "../views/ViewProfile.vue";
import Login from "@/views/ViewLogin.vue";
const routes = [
  {
    path: "/home",
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
  {
    path: "/editprofile",
    name: "editprofile",
    component: EditProfile,
  },
  {
    path: "/profile",
    name: "profile",
    component: Profile,
  },
  {
    path: "/",
    name: "login",
    component: Login,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
