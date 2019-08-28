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


$(window).bind("onbeforeunload", function(){
  $("#barcode-picture-home").hide();
  $(".spinner").fadeIn('slow');
});

// document.querySelector(".spinner").style.display = "none";

// window.unload() => {
//   document.querySelector("#barcode-picture-home").style.display = "block";
//   document.querySelector(".spinner")fadeIn('slow');
// }

// window.addEventListener('unload', function(event) {
//         document.querySelector("#barcode-picture-home").style.display = "block";
//       });
