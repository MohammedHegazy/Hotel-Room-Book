<template>
  <div class="Login">
    <div class="container" style="width: fit-content;">
      <form
        class="form-section table table-responsive"
        @submit.prevent="submitForm"
      >
        <header>
          <img src="@/assets/logo.png" alt="LOGO" />
        </header>
        <div class="align_box">
          <input
            type="email"
            class="element"
            v-model="email"
            placeholder="youremail@email.com"
          />
        </div>
        <div v-if="errors && errors.email" class="align_box">
          {{ errors.email }}
        </div>
        <div class="align_box">
          <input
            type="password"
            class="element"
            placeholder="password"
            v-model="password"
          />
        </div>
        <div v-if="errors && errors.password" class="align_box">
          {{ errors.password }}
        </div>
        <div class="align_box">
          <!-- <router-link to="/home" class="clkbtn"> Login</router-link> -->
          <input type="submit" value="Log In" class="clkbtn" />
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import router from '@/router'
import axios from 'axios'

export default {
  name: 'LoginForm',

  data: () => ({ email: '', password: '', errors: null }),
  methods: {
    submitForm() {
      axios
        .post('http://wam3.tech/hotel/public/api/login/hotel', {
          email: this.email,

          password: this.password,
        })
        .then((response) => {
          console.log(response.status)
          localStorage.setItem('token', response.data.data.token.access_token)
          router.push({ name: 'home' })
        })
        .catch((e) => {
          console.log(e.response.status)
        })
      const errors = {}
      if (!this.password) {
        errors.password = 'Password is required'
      }
      if (!this.email) {
        errors.email = 'Email is required'
      } else if (
        !/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(
          this.email,
        )
      ) {
        errors.email = 'Invalid email'
      }

      if (Object.keys(errors).length > 0) {
        this.errors = errors
        return
      } else {
        this.errors = null
      }

      // // Handle submitting form
    },
  },
}
</script>

<style scoped>
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 5%;
}
header {
  display: flex;
  justify-content: center;
}
.align_box {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 40px;
  font-size: 20px;
}
.clkbtn {
  font-size: 20px;
  width: 200px;
  height: 50px;
}
.element {
  font-size: 17px;
  width: 100%;
  height: 50px;
  box-shadow: 3px 3px 10px #544fa3;
}
</style>
