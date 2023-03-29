<template>
  <form>
    <div class="container">
      <div style="margin-top: 20px;">
        <input
          type="text"
          class="search"
          placeholder="Search..."
          v-model="findroomnum"
        />
      </div>
      <!-- Form section that contains the
   Room card details -->
      <div class="form-section table-responsive">
        <!-- card form -->
        <table class="table">
          <thead class="thead-light">
            <tr class="tablerow">
              <th>Room number</th>
              <th>Room capacity</th>
              <th>Room floor</th>
              <th>Room price</th>
              <th style="width: 120px;">Show room</th>
              <th style="width: 120px;">Maintenance</th>
              <th style="width: 120px;">Delete room</th>
            </tr>
            <tr v-for="room in rooms" :key="room.room_number" class="tablerow">
              <th>{{ room.room_number }}</th>
              <th>{{ room.capacity }}</th>
              <th>{{ room.floor }}</th>
              <th>{{ room.price }}</th>
              <th>
                <router-link to="/editroom" class="clkbtn">Show</router-link>
              </th>
              <th><a href="" class="clkbtn">Maintenance</a></th>
              <th><a href="" class="clkbtn">Delete</a></th>
            </tr>
          </thead>
        </table>
        <div class="addroomdiv">
          <router-link
            to="/addroom"
            class="clkbtn"
            style="margin-bottom: 12px;"
          >
            Add Room
          </router-link>
        </div>
      </div>
    </div>
  </form>
</template>

<script>
import axios from 'axios'
export default {
  name: 'RoomsTable',
  data() {
    return {
      findroomnum: '',
      rooms: [],
    }
  },
  // computed: {
  //   filterroom() {
  //     return this.rooms.filter((room) =>
  //       room.roomnum.includes(this.findroomnum),
  //     )
  //   },
  // },
  methods: {
    showrooms() {
      axios({
        method: 'get',
        url: 'http://wam3.tech/hotel/public/api/auth/hotel/getRoomsByHotel',
        params: {
          token: localStorage.getItem('token'),
        },
      })
        .then((response) => {
          console.log(response.data.status)
          this.rooms = response.data.data.Rooms[0]
        })
        .catch((e) => {
          console.log(e.message)
        })
    },
  },
  beforeMount() {
    this.showrooms()
  },
}
</script>

<style>
table {
  margin-top: 20px;
}
.container {
  margin-top: 20px;
  height: 100%;
  background-color: white;
  box-shadow: 8px 8px 20px #544fa3;
  position: relative;
  overflow: hidden;
}

.addroomdiv {
  display: flex;
  justify-content: center;
  align-items: center;
}

.clkbtn {
  display: flex;
  color: black;
  height: 30px;
  width: 110px;
  font-size: 15px;
  font-weight: 700;
  border-radius: 50px;
  justify-content: center;
  align-items: center;
  background-image: linear-gradient(to right, #03b5a5, #03b5a5);
  border: none;
  cursor: pointer;
  text-align: center;
}

a {
  color: black;
  display: flex;
}

a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

a:hover {
  text-decoration: none;
  color: black;
}

a:active {
  text-decoration: none;
}

.search {
  height: 40px;
  width: 100%;
  outline: none;
  border: none;
  color: rgb(77, 77, 77);
  background-color: rgb(230, 230, 230);
  border-radius: 50px;
  padding: 0px 20px 0px;
}

.tablerow {
  text-align: center;
}
</style>
