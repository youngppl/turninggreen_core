function updateActiveButton(el) {
  // toggle button active states
  $('.menu').find('button').removeClass('active')
  $(el).addClass('active')
  // show respective tab content
  $('.content').find('.tab').removeClass('active')
  target = $(el).data('target')
  $('.content').find('.' + target).addClass('active')
}
