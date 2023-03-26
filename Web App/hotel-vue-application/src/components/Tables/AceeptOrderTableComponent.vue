<template>
    {{ Onload() }}
  <form action="">
    <div class="container">
      <div class="form-section table-responsive">
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
              <th>
                <button class="clkbtn" style="padding: 0;">
                  Accept
                </button>
              </th>
              <th>
                <button class="clkbtn" style="padding: 0;">
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
import router from '@/router'

export default {
  name: 'AcceptOrdersTable',
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
  methods:{
    Onload() {
      if (!localStorage.getItem('token')) {
        return router.push({ path: '/' })
      }
    },
  },
}
</script>
