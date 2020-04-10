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
    // if button not disabled -> log progress
    $.post('/logs/new', {
      challenge_id: challenge_id,
      metric: $(el).siblings('.input').val()
    });
    // hide prompt
    $(el).parent().hide()
    // mark challenge card as logged
    $(el).parent().prev('.carousel-item').addClass('logged')
    // update and show metric popup
    eval("updateChart_"+challenge_id+"()")
    // show points
    $('.points-earned').show()
    // cycle challenges carousel to next unlogged challenge
    $('#challenges-carousel').find('.carousel-item').each(function(index) {
      if (!$(this).hasClass('logged') && !$(this).hasClass('last')) {        
        $('#challenges-carousel').carousel(index)
        return false;
      }
    })
  }
}
