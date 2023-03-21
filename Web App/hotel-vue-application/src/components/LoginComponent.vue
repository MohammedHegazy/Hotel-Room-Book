<template>
  <div class="Login">
    <div class="container" style="width: fit-content;">
      <form action="" class="form-section table table-responsive">
        <header>
          <img src="@/assets/logo.png" alt="LOGO" />
        </header>
        <div class="align_box">
          <input
            type="email"
            class="element"
            placeholder="youremail@email.com"
          />
        </div>
        <div class="align_box">
          <input type="password" class="element" placeholder="password" />
        </div>
        <div class="align_box">
          <router-link to="/home" class="clkbtn"> Login</router-link>
          <!-- <input type="submit" value="Log In" class="clkbtn" /> -->
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LoginForm',
}
</script>

<style scoped>
.container{
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
