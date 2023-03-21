<template>
    <div class="acceptorder">
        <NavBar />
        <AceeptOrderTableComponent />
    </div>
</template>

<script>
import AceeptOrderTableComponent from '@/components/Tables/AceeptOrderTableComponent.vue';
import NavBar from '@/components/NavBar.vue';
export default{
    components:{
        AceeptOrderTableComponent,
        NavBar,
    }
}
</script>