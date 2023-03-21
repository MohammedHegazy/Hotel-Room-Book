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
                  class="element"
                  v-model="description"
                  style="border-radius: 0;"
                ></textarea>
              </th>
            </tr>
            <tr>
              <th colspan="2">
                images
                <input type="file" class="element addfile" multiple ref="file" />
              </th>
            </tr>
            <tr>
              <th display="block" colspan="3" rowspan="3" style="width: 200px;">
                <div
                  id="carouselExampleIndicators"
                  class="carousel slide"
                  data-ride="carousel"
                >
                  <ol class="carousel-indicators">
                    <li
                      data-target="#carouselExampleIndicators"
                      :data-slide-to="arrayimage.imgid"
                      v-for="arrayimage in arrayimages"
                      :class="arrayimage.imgnum ? 'active' : ''"
                      :key="arrayimage"
                    ></li>
                  </ol>
                  <div class="carousel-inner">
                    <div
                      :class="
                        arrayimage.imgnum
                          ? 'carousel-item active'
                          : 'carousel-item'
                      "
                      v-for="arrayimage in arrayimages"
                      :key="arrayimage"
                    >
                      <div class="containerimg">
                        <img
                          class="d-block w-100 image"
                          :src="arrayimage.source"
                          alt="First slide"
                        />
                        <div class="middle">
                          <button class="clkbtn showbtn">Delete</button>
                        </div>
                      </div>
                    </div>
                    <a
                      class="carousel-control-prev"
                      href="#carouselExampleIndicators"
                      role="button"
                      data-slide="prev"
                    >
                      <span
                        class="carousel-control-prev-icon"
                        aria-hidden="true"
                      ></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a
                      class="carousel-control-next"
                      href="#carouselExampleIndicators"
                      role="button"
                      data-slide="next"
                    >
                      <span
                        class="carousel-control-next-icon"
                        aria-hidden="true"
                      ></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
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
  components: {
    NavBar,
  },
  data() {
    return {
      roomsclass: [
        {
          class: 'vip',
          selected: false,
        },
        {
          class: 'suite',
          selected: true,
        },
        {
          class: 'room',
          selected: false,
        },
      ],
      description: 'Hello this is vue test',
      roomnum: 111,
      price: 200,
      numofppl: 4,
      arrayimages: [
        {
          imgnum: true,
          imgid: 0,
          source: require('../Images/Room Images/pexels-pixabay-355948.jpg'),
        },
        {
          imgnum: false,
          imgid: 1,
          source: require('../Images/Room Images/pexels-pixabay-355948.jpg'),
        },
        {
          imgnum: false,
          imgid: 2,
          source: require('../Images/Room Images/pexels-pixabay-355948.jpg'),
        },
      ],
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
.image {
  opacity: 1;
  display: block;
  transition: 0.5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: 0.5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.containerimg:hover .image {
  opacity: 0.7;
}

.containerimg:hover .middle {
  opacity: 1;
}

</style>
