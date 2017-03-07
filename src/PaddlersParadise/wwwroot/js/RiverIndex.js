$(document).ready(function () {
    console.log("hello")
    callUSGS("14377100");
    
});
var callUSGS = function (gaugeId) {
    console.log(gaugeId);
    $.ajax({
        url: "/RiverRun/USGSCall/",
        type: 'POST',
        data: {gaugeId : gaugeId},
        datatype: 'text',
        success: function (result) {
            console.log("called usgs, they answered");
            console.log(result);
        },error: console.log("error")
    });
}
