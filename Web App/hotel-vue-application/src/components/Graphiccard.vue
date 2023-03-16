<template>
  <div class="graph">
    <canvas id="myChart"></canvas>
  </div>
</template>

<script>
import Chart from "chart.js/auto";
export default {
  name: 'Graphic-card',
  mounted() {
    const ctx = document.getElementById('myChart')
    const mixedChart = new Chart(ctx, {
      data: {
        datasets: [
          {
            type: 'line',
            label: 'Log scale',
            data: [20, 20, 30, 40],
          },
          {
            type: 'line',
            label: 'Linear scale',
            data: [10, 50, 70, 50],
          },
        ],
        labels: ['2000', '2001', '2002', '2003'],
      },
      options: {
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    stacked: false,
    plugins: {
      title: {
        display: true,
        text: 'Chart.js Line Chart - Multi Axis'
      }
    },
    scales: {
      y: {
        type: 'linear',
        display: true,
        position: 'left',
      },
      y1: {
        type: 'linear',
        display: true,
        position: 'right',

        // grid line settings
        grid: {
          drawOnChartArea: false, // only want the grid lines for one axis to show up
        },
      }
    }
  }
    })
    mixedChart;
  },
}
</script>
