$(document).ready(function () {
    var url = window.location.pathname;
    var urlArray = url.split('/');
    var gaugeId = urlArray[3];
    console.log(gaugeId)

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