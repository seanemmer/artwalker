$ ->
    initialize()

initialize = ->
  directionsDisplay = new google.maps.DirectionsRenderer()
  directionsService = new google.maps.DirectionsService()
  mapOptions =  
    zoom: 10
  map = new google.maps.Map $('#map-canvas')[0], mapOptions
  directionsDisplay.setMap(map)
  
  start = $('#start')[0]
  end = $('#end')[0]
  request = 
    origin: 'New York'
    destination: 'Miami'
    travelMode: google.maps.TravelMode.DRIVING
  directionsService.route(request, (result, status) ->
    if status == google.maps.DirectionsStatus.OK   
      directionsDisplay.setDirections(result))