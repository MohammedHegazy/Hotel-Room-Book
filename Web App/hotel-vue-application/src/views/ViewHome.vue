<template>
  <div class="home">
    <div class="table-card">
      <div class="table-background">
        <form action="">
          <table class="table table-responsive form-section">
            <thead class="thead-light">
              <tr align="center">
                <th class="hometh" colspan="3">
                  <p>Revenues</p>
                  <Graphiccard />
                </th>
              </tr>
              <tr align="center">
                <th class="hometh">
                  <p>Number of rooms available</p>
                  <p>400</p>
                </th>
                <th class="hometh">
                  <p>The number of orders</p>
                  <p>200</p>
                </th>
                <th class="hometh">
                  <p>The number of vacant rooms</p>
                  <p>200</p>
                </th>
              </tr>
            </thead>
          </table>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import Graphiccard from '@/components/Graphiccard.vue'

export default {
  components: {
    Graphiccard,
  },
}
</script>

<style>
.table-card {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 600px;
  margin-top: 1%;
}

.table-background {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 600px;
  width: 1100px;
  background-color: white;
  box-shadow: 8px 8px 20px #544fa3;
}

.graph {
  width: 1000px;
  height: 350px;
}

@media screen and (max-width: 1120px) {
  .table-background {
    height: 580px;
    width: 800px;
  }

  .graph {
    width: 700px;
    height: 350px;
  }
}

@media screen and (max-width: 820px) {
  .table-card {
    height: 500px;
    margin-top: 5%;
  }

  .table-background {
    height: 500px;
    width: 700px;
  }

  .graph {
    width: 500px;
    height: 250px;
  }

  .hometh {
    font-size: 15px;
  }
}

@media screen and (max-width: 680px) {
  .table-card {
    height: 400px;
    margin-top: 5%;
  }

  .table-background {
    height: 350px;
    width: 500px;
  }

  .graph {
    width: 400px;
    height: 150px;
  }

  .hometh {
    font-size: 11px;
  }
}

@media screen and (max-width: 490px) {
  .table-card {
    height: 350px;
    margin-top: 10%;
  }

  .table-background {
    height: 380px;
    width: 380px;
  }

  .graph {
    font-size: 10px;
    width: 330px;
    height: 200px;
  }

  .hometh {
    font-size: 8px;
  }
}

@media screen and (max-width: 355px) {
  .table-card {
    height: 350px;
    margin-top: 20px;
  }

  .table-background {
    height: 260px;
    width: 270px;
  }

  .graph {
    width: 230px;
    height: 100px;
  }

  .hometh {
    font-size: 5px;
  }
}
</style>
