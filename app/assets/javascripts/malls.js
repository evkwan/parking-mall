

$(document).ready(function () {
     console.log("ready!");
    // will call refreshPartial every 60 seconds
    setInterval(refreshPartial, 60000);

});

// calls action refreshing the partial
function refreshPartial() {
  console.log("in refreshPartial!");
  $.ajax({
    url: "malls/refresh_part"
 });
}
