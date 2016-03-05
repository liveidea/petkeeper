$(document).ready(function() {
    $('.user--edit').on('click', function() {
      var userName = $('.profile--name')[0].innerText;
      var userNameInput = '<input class="user--name" placeholder="' + userName + '""/>';
      $('.profile--name').append(userNameInput);
    });



});
