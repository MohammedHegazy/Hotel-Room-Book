<template>
    <p style="display: none;">{{ onLoad() }}</p>
    <div class="ProfileTable">
      <NavBar />
      <form action="" @submit="onSubmit">
        <div class="container" style="width: fit-content;">
          <div>
            <table class="table table-responsive form-section" align="center">
              <thead class="thead-light">
                <tr>
                  <th display="block" style="width: 600px;" colspan="2">
                    <img
                              class="d-block w-100 image"
                              :src="src"
                              alt="First slide"
                            />
                  </th>
                </tr>
                <tr>
                  <th>
                    <p>Owner name : {{ owner_name }}</p>
                  </th>
                  <th>
                    <p>Email : {{ email }}</p>
                  </th>
                </tr>
                <tr>
                  <th>
                    <p>Phone number : {{ phnum }}</p>
                  </th>
                  <th>
                    <p>Address : {{ address }}</p>
                  </th>
                </tr>
                <tr>
                  <th>
                    <p>Rating : {{ rating }}</p>
                  </th>
                  <th>
                    <p>Room number : {{ room_num }}</p>
                  </th>
                </tr>
                <tr>
                  <th colspan="2">
                    <p>Description : <br> {{ description }}</p>
                  </th>
                </tr>
                <tr align="center">
                  <th colspan="2">
                    <router-link to="/editprofile" class="clkbtn">Edit</router-link>
                  </th>
                </tr>
              </thead>
            </table>
          </div>
        </div>
      </form>
    </div>
  </template>
  
  <script>
  import NavBar from '@/components/NavBar.vue'
  import axios from 'axios'
  
  export default {
    name: 'ProfileTable',
    components: {
      NavBar,
    },
    data() {
      return {
        owner_name: '',
        hotel_name: '',
        email: '',
        phnum: '',
        address: '',
        rating: '',
        room_num: '',
        description: '',
        src: require('../Images/Room Images/pexels-pixabay-355948.jpg'),
      }
    },
    methods: {
      async onLoad() {
        axios({
          method: 'get',
          url: 'http://wam3.tech/hotel/public/api/auth/hotel/profile',
          params: {
            'token': localStorage.getItem('token'),
          },
        })
          .then((response) => {
            console.log(response)
            this.owner_name = response.data.data.name
            this.hotel_name = response.data.data.hotel_name
            this.email = response.data.data.email
            this.phnum = response.data.data.phone
            this.address = response.data.data.address
            this.rating = response.data.data.offical_rating
            this.room_num = response.data.data.room_numbers
            this.description = response.data.data.description
            this.src = require('../Images/Room Images/pexels-pixabay-355948.jpg')
            
          })
          .catch((e) => {
            console.log(e.data.status)
          })
      },
    },
  }
  </script>
  