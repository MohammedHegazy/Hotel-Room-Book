<template>
  <div class="orders">
    <NavBar />
    <ViewOrder />
  </div>
</template>

<script>
import NavBar from '@/components/NavBar.vue';
import ViewOrder from '@/components/Tables/OrdersTableComponent.vue'
export default {
  components: {
    ViewOrder,
    NavBar,
  },
}
</script>
