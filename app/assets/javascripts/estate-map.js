

$(function () {

// Regular map
    function regular_map() {
        var var_location = new google.maps.LatLng(41.954923, -85.618663);

        var var_mapoptions = {
            center: var_location,
            zoom: 15
        };

        var var_map = new google.maps.Map(document.getElementById("map-container-estate"),
            var_mapoptions);

        var var_marker = new google.maps.Marker({
            position: var_location,
            map: var_map,
            title: "River Run Estates"
        });
    }

    // Initialize maps
    google.maps.event.addDomListener(window, 'load', regular_map);

});