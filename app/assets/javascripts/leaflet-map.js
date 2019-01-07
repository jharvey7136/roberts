


var map = L.map('leaflet-map').setView([41.924704, -85.746092], 13);

L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a>',
  maxZoom: 18,
}).addTo(map);

L.marker([41.9246475,-85.7458422],{
    title: 'Roberts Corey Lake Campground',
    alt: 'Three Rivers, Michigan',
    riseOnHover: true
}).addTo(map);

L.control.scale().addTo(map);


map.on('click', function (ev) {
    map.setZoomAround([41.9246475,-85.7458422], 15)
})