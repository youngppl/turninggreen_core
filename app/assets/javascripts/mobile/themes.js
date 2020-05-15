function toggleThemeCard(el) {
  theme = $(el).data('theme')
  // toggle icon
  $('.themes-icons').children().each(function() {
    $(this).removeClass('active')
  });
  $(el).toggleClass('active')
  // toggle card
  $('.theme-card').children().each(function() {
    $(this).removeClass('active')
  })
  $('.theme-card').children('.' + theme).toggleClass('active')
}
