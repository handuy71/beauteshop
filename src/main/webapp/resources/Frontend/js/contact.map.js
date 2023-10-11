function init_map() {
    var myOptions = {
        zoom: 13,
        center: new google.maps.LatLng(21.000895163940832, 105.82919226914153),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById('gmap_canvas'),
        myOptions);
    marker = new google.maps.Marker({
        map: map,
        position: new google.maps.LatLng(20.980490743858663, 105.78792603594793)
    });
    infowindow = new google.maps.InfoWindow({
        content: '<strong>BEAUTE</strong><br>'
    });
    google.maps.event.addListener(marker, 'click',
        function() {
            infowindow.open(map, marker);
        });
    infowindow.open(map, marker);
}
google.maps.event.addDomListener(window, 'load', init_map);