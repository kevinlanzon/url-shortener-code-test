$(document).ready(function() {

  $("form#shortener").submit(function(event) {
    event.preventDefault();
    $('#message').text("Here is your shortened URL");
  });
});
