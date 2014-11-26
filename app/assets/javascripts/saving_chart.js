/*
 *  requires:
 * 1. data-interval
 * 2. point-start
 * 3. chart-data
 * 4. target
 */
jQuery(function ($) {  

  var $chart = $('#finanzas_chart');
  if ($('#finanzas_chart').length > 0) {
    new Highcharts.Chart({  
      chart: { renderTo: 'finanzas_chart' },  
      title: { text: 'Finanzas' },  
      xAxis: { type: 'datetime' },  
      yAxis: {  
        title: { text: 'Euros'}  
      },  

      tooltip: {  
        formatter: function () {  
          return Highcharts.dateFormat("%B %e %Y", this.x) + ': ' +  
            '$' + Highcharts.numberFormat(this.y, 2);  
        }  
      },      
      series: [{ 
        name: "Capacidad ahorro",
        pointInterval: $chart.data('interval'),  
        pointStart: $chart.data('point-start'),
        data: $chart.data('chart-data')
      }, {
        name: "Objetivo",
        pointInterval: $chart.data('interval'),  
        pointStart: $chart.data('point-start'),
        data: $chart.data('target')
      }]  
    });  
  }
});    