$(document).ready(function(){
    $("#p1").hide();
    $("#p2").hide();
    $("#p3").hide();

    $(".button").click(function(){
        $("#p1").show(500);
        $("#p2").show(1000);
        $("#p3").show(2000);
    });
});