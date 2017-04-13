

$(document).ready(function () {
    detectBrowser();
    var url = window.location.pathname;
    var urlArray = url.split('/');
    var gaugeId = urlArray[3];
    
    
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
            var agency = result.value.timeSeries[0].sourceInfo.siteCode[0].agencyCode
            var network = result.value.timeSeries[0].sourceInfo.siteCode[0].network
            var latitude = result.value.timeSeries[0].sourceInfo.geoLocation.geogLocation.latitude
            var longitude = result.value.timeSeries[0].sourceInfo.geoLocation.geogLocation.longitude
            initMap(latitude,longitude, gaugeName)
            if (unit == "deg C") {
                unit = "Gage height, ft"
            }
            if (flow == "-999999") {
                flow = "Flow Unavailable"
                unit = ""
            }
            $('#currentFlow').html('<a>' + flow + ' ' + unit + '</a>');
            $('#gaugeName').html('<a target="_blank" href="https://waterdata.usgs.gov/' + state + '/nwis/uv?site_no=' + gaugeId + '">' + gaugeName + '</a>');
            $('#gaugeId').html(gaugeId)
            $('#agency').html(agency)
            $('#network').html(network)
            $('#loadingBar').hide()
            $('#gaugeDetails').show();
        }
    });
});

var initMap = function (latitude, longitude, gaugeName) {
    if (latitude != null && longitude != null)
    {
   
    var center = { lat: latitude, lng: longitude };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
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
    var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h5 id="firstHeading" class="firstHeading">'+gaugeName+'</h5>' +
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

    //function addMarker(feature) {
    //    var marker = new google.maps.Marker({
    //        position: feature.position,
    //        map: map
    //    })
    //}

    //var features = [
    //    {
    //        position: new google.maps.LatLng(45, -122)
    //    }
    //]
    //for (var i = 0, feature; feature = features[i]; i++) {
    //    addMarker(feature);
    //}
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
