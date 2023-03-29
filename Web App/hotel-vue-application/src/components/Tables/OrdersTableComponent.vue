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
            <tr class="tablerow">
              <th>Order ID</th>
              <th>Room number</th>
              <th>user</th>
              <th>number of people</th>
              <th>total price</th>
            </tr>
            <tr v-for="order in orders" :key="order.id" class="tablerow">
              <th>{{ order.id }}</th>
              <th>{{ order.rooms_id }}</th>
              <th>{{ order.user_id }}</th>
              <th>{{ order.number_of_people }}</th>
              <th>{{ order.totla_price }}</th>
            </tr>
          </thead>
        </table>
      </div>
    </div>
  </form>
</template>

<script>
import axios from 'axios'
export default {
  name: 'OrdersTable',
  data() {
    return {
      findorder: '',
      orders: [],
    }
  },
  // computed: {
  //   filterorder() {
  //     return this.orders.filter((order) =>
  //       order.ordernum.includes(this.findorder),
  //     )
  //   },
  // },
  methods: {
    showbooking() {
      axios({
        method: 'get',
        url: 'http://wam3.tech/hotel/public/api/auth/hotel/showBookingByStatus',
        params: {
          token: localStorage.getItem('token'),
        },
      })
        .then((response) => {
          console.log(response.data.status)
          this.orders = response.data.AcceptBooks
        })
        .catch((e) => {
          console.log(e.message)
        })
    },
  },
  beforeMount() {
    this.showbooking()
  },
}
</script>
