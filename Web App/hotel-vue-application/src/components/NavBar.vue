<template>
  <div class="navbar">
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
            <router-link class="nav-link" to="/orders">Orders</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/acceptorder">
              Accept order
            </router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/profile">Profile</router-link>
          </li>
          <li class="nav-item logout">
            <router-link class="nav-link" to="/">
              Logout
            </router-link>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
}
</script>

<style>
.navbar {
  width: 100%;
  margin-top: -5px;
}
.logout{
  margin-left: 60%;
}
@media screen and (max-width: 1150px) {
.logout{
  margin-left: 55%;
}
}
@media screen and (max-width: 1000px) {
.logout{
  margin-left: 45%;
}
}
@media screen and (max-width: 903px) {
.logout{
  margin-left: 40%;
}
}
@media screen and (max-width: 767px) {
.logout{
  margin: 0;
}
}
</style>
