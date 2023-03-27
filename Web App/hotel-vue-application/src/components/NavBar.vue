<template>
  <div class="navbar">
    <form class="navbar" @submit.prevent="submitForm">
      <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <img src="@/assets/logo.png" alt="logo" class="logo" />
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#collapsibleNavbar"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav" style="width: 100%;">
            <li class="nav-item">
              <router-link class="nav-link" to="/home">Home</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/rooms">Rooms</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/orders">Accepted Orders</router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/acceptorder">
                Orders
              </router-link>
            </li>
            <li class="nav-item">
              <router-link class="nav-link" to="/profile">Profile</router-link>
            </li>
            <li class="nav-item logout">
              <button
                class="nav-link"
                type="submit"
                style="background: none; border: none;"
              >
                Logout
              </button>
            </li>
          </ul>
        </div>
      </nav>
    </form>
  </div>
</template>

<script>
import router from '@/router'
import axios from 'axios'
export default {
  name: 'NavBar',
  methods: {
    submitForm() {
      axios
        .post('http://wam3.tech/hotel/public/api/auth/hotel/logout', {
          token: localStorage.getItem('token'),
        })
        .then((response) => {
          console.log(response.status)
          window.localStorage.clear()
          router.push({ path: '/' })
        })
        .catch((e) => {
          console.log(e.response.status)
        })
    },
  },
}
</script>

<style>
.navbar {
  width: 100%;
  margin-top: -8px;
}
.logout {
  margin-left: 60%;
}
@media screen and (max-width: 1150px) {
  .logout {
    margin-left: 55%;
  }
}
@media screen and (max-width: 1000px) {
  .logout {
    margin-left: 45%;
  }
}
@media screen and (max-width: 903px) {
  .logout {
    margin-left: 40%;
  }
}
@media screen and (max-width: 767px) {
  .logout {
    margin: 0;
  }
}
</style>
