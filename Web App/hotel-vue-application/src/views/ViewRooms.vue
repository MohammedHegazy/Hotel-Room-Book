<template>
  <div class="rooms">
    <NavBar />
    <RoomsTable />
  </div>
</template>

<script>
import NavBar from '@/components/NavBar.vue';
import RoomsTable from '@/components/Tables/RoomsTableComponent.vue'
export default {
  components: {
    RoomsTable,
    NavBar,
  },
}
</script>
