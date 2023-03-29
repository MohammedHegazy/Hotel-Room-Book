<template>
  <div class="addroom">
    <NavBar />
    <div class="container" style="width: fit-content;">
      <form action="" @submit.prevent="onSubmit">
        <table class="table table-responsive form-section" align="center">
          <thead class="thead-light">
            <tr>
              <th>
                <p>Room Number:</p>
                <input type="text" class="element" v-model="room_number" />
              </th>
              <th>
                <p>price</p>
                <input type="text" class="element" v-model="price" />
              </th>
            </tr>
            <tr>
              <th>
                <p>Number of people</p>
                <input type="number" class="element" v-model="capacity" />
              </th>
              <th>
                <p>classification</p>
                <select class="element" @change="cat_id($event)">
                  <option
                    v-for="roomclass in roomsclass"
                    :key="roomclass.id"
                    :value="roomclass.id"
                  >
                    {{ roomclass.name }}
                  </option>
                </select>
              </th>
            </tr>
            <tr>
              <th>
                Floor:
                <input type="text" class="element" v-model="floor" />
              </th>
              <th>
                images
                <input
                  type="file"
                  class="element addfile"
                  multiple
                  ref="file"
                />
              </th>
            </tr>
            <tr>
              <th colspan="2">
                <p>Category</p>
                <textarea
                  name=""
                  id=""
                  cols="90"
                  rows="3"
                  class="element addfile"
                  v-model="description"
                  style="border-radius: 0;"
                ></textarea>
              </th>
            </tr>
          </thead>
          <tr align="center">
            <th colspan="2">
              <input
                class="clkbtn"
                id="sub"
                type="submit"
                value="Send"
                style="padding-bottom: 30px;"
              />
            </th>
          </tr>
        </table>
      </form>
    </div>
  </div>
</template>

<script>
import NavBar from '@/components/NavBar.vue'
import axios from 'axios'
import router from '@/router'
export default {
  name: 'AddRoom',
  components: {
    NavBar,
  },
  data() {
    return {
      roomsclass: [],
      category_id: '',
      room_number: '',
      floor: '',
      capacity: '',
      description: '',
      price: '',
    }
  },
  methods: {
    cat_id(e) {
      var id = e.target.value
      this.category_id = id
    },
    categoies() {
      axios({
        method: 'get',
        url: 'http://wam3.tech/hotel/public/api/anyone/showCategories',
        params: {
          token: localStorage.getItem('token'),
        },
      })
        .then((response) => {
          console.log(response.data.status)
          this.roomsclass = response.data.data
        })
        .catch((e) => {
          console.log(e.message)
        })
    },
    onSubmit() {
      // const file = this.$refs.file.files[0]

      // if (!file) {
      //   e.preventDefault()
      //   alert('No file chosen')
      //   return
      // }

      // else if (file.size / 1024 ** 2 >= 2) {
      //   e.preventDefault()
      //   alert('File should be less than 2MB')
      //   return
      // }

      // else{

      // }
      axios
        .post('http://wam3.tech/hotel/public/api/room/action/store', {
          'token': localStorage.getItem('token'),
          'category_id': this.category_id,
          'room_number': this.room_number,
          'floor': this.floor,
          'capacity': this.capacity,
          'description': this.description,
          'price': this.price,
        })
        .then((response) => {
          console.log(response.data.status)
          router.push('/rooms')
        })
        .catch((e) => {
          console.log(e)
        })
    },
  },
  beforeMount() {
    this.categoies()
  },
}
</script>

<style>
.element {
  width: 100%;
  outline: none;
  border: none;
  color: rgb(77, 77, 77);
  background-color: rgb(250, 250, 250);
  border-radius: 50px;
  padding-left: 20px;
}
input::file-selector-button {
  border-radius: 50px;
  background-image: linear-gradient(to right, #03b5a5, #03b5a5);
  font-size: 15px;
  border: none;
  cursor: pointer;
  padding: 5px 10px;
}
.addfile {
  padding: 0;
}
</style>
