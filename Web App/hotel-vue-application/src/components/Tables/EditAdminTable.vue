<template>
  <div class="ProfileTable">
    <NavBar />
    <form @submit.prevent="onSubmit">
      <div class="container" style="width: fit-content;">
        <div>
          <table class="table table-responsive form-section" align="center">
            <thead class="thead-light">
              <tr>
                <th display="block" style="width: 600px;" colspan="2">
                  <div
                    id="carouselExampleIndicators"
                    class="carousel slide"
                    data-ride="carousel"
                  >
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <div class="containerimg">
                          <img
                            class="d-block w-100 image"
                            :src="src"
                            alt="First slide"
                          />
                          <div class="middle">
                            <input
                              id="editpf"
                              type="file"
                              class="element addfile"
                              ref="file"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </th>
              </tr>
              <tr>
                <th colspan="2">
                  <p>Owner name :</p>
                  <input type="text" class="element" v-model="owner_name" />
                </th>
              </tr>
              <tr>
                <th>
                  <p>Email :</p>
                  <input
                    type="email"
                    class="element"
                    v-model="email"
                    placeholder="toto@toto.com"
                  />
                </th>
                <th>
                  <p>Password:</p>
                  <input type="password" class="element" v-model="password" />
                </th>
              </tr>
              <tr>
                <th>
                  <p>Phone number :</p>
                  <input
                    type="text"
                    class="element"
                    v-model="phnum"
                    placeholder="+963932587298"
                  />
                </th>
                <th>
                  <p>Address :</p>
                  <input
                    type="text"
                    class="element"
                    v-model="address"
                    placeholder="Syria Damascus,Alhamra"
                  />
                </th>
              </tr>
              <tr>
                <th>
                  <p>Rating :</p>
                  <input
                    type="text"
                    class="element"
                    v-model="rating"
                    placeholder="3"
                  />
                </th>
                <th>
                  <p>Room number :</p>
                  <input
                    type="text"
                    class="element"
                    v-model="room_num"
                    placeholder="220"
                  />
                </th>
              </tr>
              <tr>
                <th colspan="2">
                  <p>Description :</p>
                  <textarea
                    cols="90"
                    rows="3"
                    class="element"
                    v-model="description"
                    style="border-radius: 0;"
                  ></textarea>
                </th>
              </tr>
              <tr align="center">
                <th colspan="2">
                  <input
                    class="clkbtn"
                    id="sub"
                    type="submit"
                    value="Save"
                    style="padding-bottom: 30px;"
                  />
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
import router from '@/router'
export default {
  name: 'ProfileTable',
  components: {
    NavBar,
  },

  data() {
    return {
      owner_name: '',
      email: '',
      phnum: '',
      address: '',
      rating: '',
      room_num: '',
      description: '',
      password: '',
      src: require('@/Images/Room Images/pexels-pixabay-355948.jpg'),
    }
  },
  methods: {
    onSubmit() {
      axios
        .post('http://wam3.tech/hotel/public/api/auth/hotel/Update', {
          token: localStorage.getItem('token'),
          name: this.owner_name,
          hotel_name: 'hotel name',
          email: this.email,
          phone: this.phnum,
          address: this.address,
          offical_rating: this.rating,
          room_numbers: this.room_num,
          description: this.description,
          password: this.password,
          image: 'qwegrt',
          long: '425.25',
          lat: '24.3',
        })
        .then((response) => {
          console.log(response.data.data.status)
          router.push('/profile')
        })
        .catch((e) => {
          console.log(e.message)
          console.log(e)
        })
    },
    async onLoad() {
      axios({
        method: 'get',
        url: 'http://wam3.tech/hotel/public/api/auth/hotel/profile',
        params: {
          token: localStorage.getItem('token'),
        },
      })
        .then((response) => {
          console.log(response.data.status)
          this.owner_name = response.data.data.name
          this.hotel_name = response.data.data.hotel_name
          this.email = response.data.data.email
          this.phnum = response.data.data.phone
          this.address = response.data.data.address
          this.rating = response.data.data.offical_rating
          this.room_num = response.data.data.room_numbers
          this.description = response.data.data.description
        })
        .catch((e) => {
          console.log(e.data.status)
        })
    },
    // onSubmit(e) {
    //   const file = this.$refs.file.files[0]

    //   if (file.size / 1024 ** 2 >= 2) {
    //     e.preventDefault()
    //     alert('File should be less than 2MB')
    //     return
    //   }
    // },
  },
  beforeMount() {
      this.onLoad()
    },
}
</script>
