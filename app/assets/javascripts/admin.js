$(window).on('turbolinks:load', function() {
  $('.user-reflection-deck').on('show.bs.collapse', function() {
     $(this).children().collapse('hide');
  });

  $('.page-item').click(function() {
    $(this).addClass('active').siblings().removeClass('active');
  });
});
