$(document).ready(function () {
    detectBrowser();
    $('.modal').modal();
   
    var url = window.location.pathname;
    var urlArray = url.split('/');
    var runId = urlArray[3];
    
    var gaugeId = $('#gaugeId').attr('value');
    
    $.ajax({
        url: "/RiverRun/USGSCall/",
        type: 'POST',
        data: { gaugeId: gaugeId },
        datatype: 'text',
        success: function (result) {
            var unit = result.value.timeSeries[0].variable.unit.unitCode;
            var flow = result.value.timeSeries[0].values[0].value[0].value
            var gaugeName = result.value.timeSeries[0].sourceInfo.siteName
            var site = gaugeName.split(', ')
            var state = site[1]
            var latitude = result.value.timeSeries[0].sourceInfo.geoLocation.geogLocation.latitude
            var longitude = result.value.timeSeries[0].sourceInfo.geoLocation.geogLocation.longitude
            initMap(latitude, longitude, gaugeName)
            if (unit == "deg C") 
            {
                unit = "Gage height, ft"
            }
            if (flow == "-999999") {
                flow = "Flow Unavailable"
                unit = ""
            }
            $('#currentFlow').html('<a href="/RiverRun/GaugeDetails/'+gaugeId+'">'+flow+' '+unit+'</a>');
            $('#gaugeName').html('<a target="_blank" href="https://waterdata.usgs.gov/' + state + '/nwis/uv?site_no=' + gaugeId + '">' + gaugeName + '</a>');
            $('#loadingBar').hide();
            $('#runDetails').show();
        }
    });
})

var initMap = function (latitude, longitude, gaugeName) {
    if (latitude != null && longitude != null) {
        //var service;
        var center = { lat: latitude, lng: longitude };
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12,
            center: center,
            mapTypeId: google.maps.MapTypeId.TERRAIN
        });
        google.maps.event.addListenerOnce(map, 'idle', function () {
            google.maps.event.trigger(map, 'resize');

        });

        var marker = new google.maps.Marker({
            position: center,
            map: map,
            title: ''
        });
        //var request = {
        //    location: center,
        //    radius: '5000',
        //    types: ['food']
        //};

        //service = new google.maps.places.PlacesService(map);
        //service.nearbySearch(request, callback());

        var contentString = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h5 id="firstHeading" class="firstHeading">' + gaugeName + '</h5>' +
                '<div id="bodyContent">' +
                '<p></p>' +
                '</div>' +
                '</div>';
        var infoWindow = new google.maps.InfoWindow({
            content: contentString
        });
        marker.addListener('click', function () {
            infoWindow.open(map, marker);
        });

        
    }
}
function callback(results, status) {
    console.log(results)
    var status = "OK";
    console.log(google.maps.places.PlacesServiceStatus)
    if (status == google.maps.places.PlacesServiceStatus.OK) {
       
        for (var i = 0; i < results.length; i++) {
            var place = results[i];
            console.log(results[i])
            createMarker(results[i]);
        }
    }
}
function detectBrowser() {
    var useragent = navigator.userAgent;
    var mapdiv = document.getElementById("map");

    if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1) {
        console.log("mobile device detected");
        mapdiv.style.marginTop = '10px';
        mapdiv.style.width = '350px';
        mapdiv.style.height = '250px';
    } else {
        mapdiv.style.width = '600px';
        mapdiv.style.height = '400px';
        //mapdiv.style.overflow = 'auto'
    }
}
