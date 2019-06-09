$(document).on('turbolinks:load', function() {
  $('.notifications-dropdown').on('click', function(e) {
    e.stopPropagation();
  })
});

function updateNotification(id) {
  $.post('/challenges/update-notification', {id:id})
  if($('.notifications-dropdown').children('div.notification:visible').length == 0) {
    $('.no-notifications').show();
    $('.notification-green-dot').hide();
  }
}
