var directionsDisplay
var directionsService
var map
var stepDisplay;
var markerArray = [];

$(function() {
  initialize();
  //calcRoute();

  $('#galleryList li').click(function() {
    $(this).addClass("active");
  })
})

function initialize() {
  // Instantiate a directions service
  directionsService = new google.maps.DirectionsService();

  // Create a map and center it on Miami
  var miamiCoords = new google.maps.LatLng(25.787925, -80.190052);
  var mapOptions = {
    zoom:10,
    center: miamiCoords
  }
  map = new google.maps.Map($('#map-canvas')[0], mapOptions);
  directionsDisplay = new google.maps.DirectionsRenderer({map: map});
}

function calcRoute() {
  var start = $('#start').val()
  var end = $('#end').val()
  var request = {
    origin: 'Miami',
    destination: 'New York City',
    
    /* waypoints: [ 
      { location: '1300 Biscayne Blvd, Miami, FL 33132' } 
    ],
    optimizeWaypoints: true,
    */
    travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(result, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(result);
    }
  });
}