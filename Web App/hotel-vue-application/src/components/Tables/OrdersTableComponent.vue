<template>
  <form action="">
    <div class="container">
      <div style="margin-top: 20px;">
        <input
          type="text"
          class="search"
          placeholder="Search..."
          v-model="findorder"
        />
      </div>
      <!-- Form section that contains the
     Room card details -->
      <div class="form-section table-responsive">
        <!-- card form -->
        <table class="table">
          <thead class="thead-light">
            <tr
              v-for="order in filterorder"
              :key="order.ordernum"
              class="tablerow"
            >
              <th>{{ order.ordernum }}</th>
              <th>{{ order.roomnum }}</th>
              <th>{{ order.bookdetail }}</th>
            </tr>
          </thead>
        </table>
      </div>
    </div>
  </form>
</template>

<script>
export default {
  name: 'OrdersTable',
  data() {
    return {
      findorder: '',
      orders: [
        {
          ordernum: '1',
          roomnum: '102',
          bookdetail: 'book detail',
        },
        {
          ordernum: '2',
          roomnum: '103',
          bookdetail: 'book detail',
        },
        {
          ordernum: '3',
          roomnum: '104',
          bookdetail: 'book detail',
        },
        {
          ordernum: '5',
          roomnum: '105',
          bookdetail: 'book detail',
        },
        {
          ordernum: '6',
          roomnum: '106',
          bookdetail: 'book detail',
        },
      ],
    }
  },
  computed: {
    filterorder() {
      return this.orders.filter((order) =>
        order.ordernum.includes(this.findorder),
      )
    },
  },
}
</script>
