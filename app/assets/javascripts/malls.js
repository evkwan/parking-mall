

$(document).ready(function () {
     //console.log("DEBUG: Ready!");
    // will call refreshPartial every 60 seconds
    setInterval(refreshPartial, 60000);

});

// calls action refreshing the partial
function refreshPartial() {
  //console.log("DEBUG: in refreshPartial!");
  $.ajax({
    url: "malls/refresh_part"
 });
}
