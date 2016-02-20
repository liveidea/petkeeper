$(document).ready(function() {
  $('.js-user-menu-trigger').click(function() {
    $('.user-menu').toggleClass('-show');
  });

  $(document).on('click', function(e) {
    if (!$(e.target).closest('.navbar-primary--user').length) {
      $('.user-menu').removeClass('-show');
    }
  });
});
