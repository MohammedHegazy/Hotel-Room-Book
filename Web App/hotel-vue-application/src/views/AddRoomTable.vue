<template>
  <div class="addroom">
    <NavBar />
    <div class="container" style="width: fit-content;">
      <form action="" @submit="onSubmit">
          <table class="table table-responsive form-section" align="center">
            <thead class="thead-light">
              <tr>
                <th>
                  <p>Number of room</p>
                  <input type="text" class="element" v-model="roomnum" />
                </th>
                <th>
                  <p>Price</p>
                  <input type="text" class="element" v-model="price" />
                </th>
              </tr>
              <tr>
                <th>
                  <p>Number of people</p>
                  <input type="number" class="element" v-model="numofppl" />
                </th>
                <th>
                  <p>classification</p>
                  <select class="element">
                    <option
                      v-for="roomclass in roomsclass"
                      :selected="roomclass.selected"
                      @click="selectedItem(roomclass.class)"
                      :key="roomclass"
                    >
                      {{ roomclass.class }}
                    </option>
                  </select>
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
              <tr>
                <th colspan="2">
                  images
                  <input
                    type="file"
                    class="element addfile"
                    multiple
                    ref="file"
                  />
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
export default {
  name: 'AddRoom',
  components:{
    NavBar,
  },
  data() {
    return {
      roomsclass: [
        {
          class: 'vip',
          selected: true,
        },
        {
          class: 'suite',
          selected: false,
        },
        {
          class: 'room',
          selected: false,
        },
      ],
      description: 'Hello this is vue test',
      roomnum: '',
      price: '',
      numofppl: '',
    }
  },
  methods: {
    selectedItem: function (selectedclass) {
      for (var i = 0; i < this.roomsclass.length; i++) {
        if (this.roomsclass[i].class != selectedclass) {
          this.roomsclass[i].selected = false
        } else {
          this.roomsclass[i].selected = true
        }
      }
    },
    onSubmit(e) {
      const file = this.$refs.file.files[0]

      if (!file) {
        e.preventDefault()
        alert('No file chosen')
        return
      }

      if (file.size / 1024 ** 2 >= 2) {
        e.preventDefault()
        alert('File should be less than 2MB')
        return
      }
    },
  },
}
</script>

<style>
.element{
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
    background-image: linear-gradient(to right,#03b5a5,#03b5a5);
    font-size: 15px;
    border: none;
    cursor: pointer;
    padding: 5px 10px;
}
.addfile{
  padding: 0;
}
</style>