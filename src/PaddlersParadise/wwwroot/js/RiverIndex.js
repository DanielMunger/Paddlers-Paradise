$(document).ready(function () {
    
    $("li").click(function () {
        $('li').removeClass("active")
        $(this).removeClass("disabled")
        $(this).addClass("active")
    });
    //setTimeout(function () {
    //    var gaugeArray = [];
    //    $("tr").each(function (index) {
    //        var gaugeid = $('#' + index + 1).data('value');
    //        console.log(index + ' ' + gaugeid);
    //        callUSGS(gaugeid);

    //    });

    //}, 1000);
});


//var callUSGS = function (gaugeId) {
//    $.ajax({
//        url: "/RiverRun/USGSCall/",
//        type: 'POST',
//        data: {gaugeId : gaugeId},
//        datatype: 'text',
//        success: function (result) {
//            console.log("called usgs, they answered");
//            console.log(result.value.timeSeries[0].values[0].value[0].value);
//            return (result.value.timeSeries[0].values[0].value[0].value)
//        }
//    });
//}
