<template>
  <form action="">
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
            <tr v-for="room in filterroom" :key="room.roomnum" class="tablerow">
              <th>{{ room.roomnum }}</th>
              <th>{{ room.roomdetail }}</th>
              <th><a href="Edit room vue test.HTMl" class="clkbtn">Show</a></th>
              <th><a href="" class="clkbtn">Maintenance</a></th>
              <th><a href="" class="clkbtn">Delete</a></th>
            </tr>
          </thead>
        </table>
        <div class="addroomdiv">
          <a
            href="Add_room vue test .html"
            class="clkbtn"
            style="margin-bottom: 12px;"
          >
            Add Room
          </a>
        </div>
      </div>
    </div>
  </form>
</template>

<script>
export default {
  name: 'RoomsTable',
  data() {
    return {
      findroomnum: '',
      rooms: [
        {
          roomnum: '101',
          roomdetail: 'room detail',
        },
        {
          roomnum: '102',
          roomdetail: 'room detail',
        },
        {
          roomnum: '103',
          roomdetail: 'room detail',
        },
        {
          roomnum: '104',
          roomdetail: 'room detail',
        },
        {
          roomnum: '105',
          roomdetail: 'room detail',
        },
        {
          roomnum: '106',
          roomdetail: 'room detail',
        },
      ],
    }
  },
  computed: {
    filterroom() {
      return this.rooms.filter((room) =>
        room.roomnum.includes(this.findroomnum),
      )
    },
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
