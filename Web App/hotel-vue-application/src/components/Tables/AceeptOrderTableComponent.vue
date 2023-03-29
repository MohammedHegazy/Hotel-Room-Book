<template>
  <form action="">
    <div class="container">
      <div class="form-section table-responsive">
        <table class="table">
          <thead class="thead-light">
            <tr class="tablerow">
              <th>Order ID</th>
              <th>Room number</th>
              <th>user</th>
              <th>number of people</th>
              <th>total price</th>
              <th style="width: 120px;">accept</th>
              <th style="width: 120px;">reject</th>
            </tr>
            <tr v-for="order in orders" :key="order.id" class="tablerow">
              <th>{{ order.id }}</th>
              <th>{{ order.rooms_id }}</th>
              <th>{{ order.user_id }}</th>
              <th>{{ order.number_of_people }}</th>
              <th>{{ order.totla_price }}</th>
              <th>
                <button
                  class="clkbtn"
                  style="padding: 0;"
                  @click="Accept(this.order.id)"
                >
                  Accept
                </button>
              </th>
              <th>
                <button
                  class="clkbtn"
                  style="padding: 0;"
                  @click="Reject(this.order.id)"
                >
                  Reject
                </button>
              </th>
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
  name: 'AcceptOrdersTable',
  data() {
    return {
      findorder: '',
      orders: [],
    }
  },
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
          this.orders = response.data.InQueueBooks
        })
        .catch((e) => {
          console.log(e.message)
        })
    },
    Accept(orderid) {
      axios
        .post('http://wam3.tech/hotel/public/api/auth/hotel/acceptBooking', {
          token: localStorage.getItem('token'),
          booking_id: orderid,
        })
        .then((response) => {
          console.log(response.data.status)
        })
        .catch((e) => {
          console.log(e.message)
        })
    },
    Reject(orderid) {
      axios
        .post('http://wam3.tech/hotel/public/api/auth/hotel/deleteBooking', {
          token: localStorage.getItem('token'),
          booking_id: orderid,
        })
        .then((response) => {
          console.log(response.data.status)
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
