/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }
  var myChart = new Chart("myChart", {
    type: "line",
    data: {},
    options: {}
  });
  var xValues = [50,60,70,80,90,100,110,120,130,140,150];
  var yValues = [7,8,8,9,9,9,10,11,14,14,15];
  
  new Chart("myChart", {
  type: "line",
  data: {
 labels: xValues,
  datasets: [{
  backgroundColor: "rgba(0,0,0,1.0)",
  borderColor: "rgba(0,0,0,0.1)",
 data: yValues}]},options:{...}
})