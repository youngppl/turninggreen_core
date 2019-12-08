$(document).on('turbolinks:load', function() {
  $('.notifications-dropdown').on('click', function(e) {
    e.stopPropagation();
  })
  window.addEventListener('resize', function(event){
    if ($(document).width() > 1250) {
      $('.content-col').removeClass('nav-toggled')
    } else if ($('.dash-nav').hasClass('nav-toggled')) {
      $('.content-col').addClass('nav-toggled')
    }
  });
});

function updateNotification(id) {
  $.post('/challenges/update-notification', {id:id})
  if($('.notifications-dropdown').children('div.notification:visible').length == 0) {
    $('.no-notifications').show();
    $('.notification-alert').hide();
  }
}

function sendFeedback(){
  $.post('/feedback', {feedback: $(".feedback-input").val()});
  $(".confirmation").show();
}

function toggleDashNav() {
  $('.dash-nav').toggleClass('nav-toggled');
  $('.content-col').toggleClass('nav-toggled')
}
