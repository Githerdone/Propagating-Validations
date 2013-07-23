$(document).ready(function () {

  // send an HTTP DELETE request for the sign-out link
  $('#event_create').on("submit", function (e) {
    e.preventDefault();
    console.log('working')
    var data = $('#event_create').serialize();
    console.log(data)
    $.post('/events/create', data).done(function(data){
      console.log(data);
    });
  });

});
