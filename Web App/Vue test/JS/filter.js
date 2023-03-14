Vue.createApp({
    el: '#greet',
    data() {
      return {
        findroomnum: '',
        roomsnumber: [
          '101', '102', '103', '104', '105', '106',
        ],
      }
    },
    computed: {
      filterroomnum: function () {
        var filtering = new RegExp(this.findroomnum, 'i');
        return this.roomsnumber.filter(function (el) {
          return el.match(filtering);
        })
      }
    }
  }).mount('#greet')