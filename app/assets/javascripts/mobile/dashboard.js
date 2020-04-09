function updateActiveButton(el) {
  // toggle button active states
  $('.menu').find('button').removeClass('active')
  $(el).addClass('active')
  // show respective tab content
  $('.content').find('.tab').removeClass('active')
  target = $(el).data('target')
  $('.content').find('.' + target).addClass('active')
}

function resetThemesiFrame() {
  path = document.getElementById('challenges-iframe').contentWindow.location.pathname
  if (path != '/themes') {
    document.getElementById('challenges-iframe').contentWindow.location.href = '/themes'
  }
}

function enableLogButton(el) {
  if ($(el).val()) {
    $('.next-button .disabled').hide()
    $('.next-button .active').show()
  } else {
    $('.next-button .disabled').show()
    $('.next-button .active').hide()
  }
}

function logProgress(el, challenge_id) {
  if ($(el).children('.next-button .active').is(':visible')) {
    // if button not disabled -> log progess
    $.post('/logs/new', {
      challenge_id: challenge_id,
      metric: $(el).siblings('.input').val()
    });
    // hide prompt
    $(el).parent().hide()
    // update and show metric popup
    eval("updateChart_"+challenge_id+"()")
    // show points
    $('.points-earned').show()
    // cycle challenges carousel
    $('.carousel').carousel('next')
  }
}
