$(document).ready(function() {
  $(".navbar-user-image").click(function() {
    $('.user-menu').toggleClass("-show");
  });

  $(document).on('click', function(e) {
    if (!$(e.target).closest('.navbar-trigger').length) {
      $('.user-menu').removeClass('-show');
    }
  });
});
