import "bootstrap";

  $("#barcode-picture-home").click (function() {
      let variable = $("#scan_photo")
      // console.log(variable)
      variable.trigger("click")
  })

 $("#navbar-scanner").click (function() {
      let variable = $("#scan_photo")
      // console.log(variable)
      variable.trigger("click")
  })

$(".search-icon").click (function() {
      console.log('submit')
      let variable = $(".hidden-search")
      // console.log(variable)
      variable.trigger("click")
  })


$(".spinner").hide();


// $(window).bind("beforeunload", function(){
//   $("#barcode-picture-home").hide();
//   $(".spinner").fadeIn('slow');
// });

$("#barcode-picture-home").click(function() {
  setTimeout(
  function()
  {
    $("#barcode-picture-home").hide();
    $(".spinner").fadeIn('slow');
  }, 2000);

})

$(".bitterness-icon").click(function() {
  $(".info-popup").toggleClass("visible");
})

$(".info-popup").click(function() {
  $(".info-popup").toggleClass("visible");
})

