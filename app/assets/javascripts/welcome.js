themes = ["food", "biodiversity", "water", "fashion", "waste", "body", "wellness", "clean", "home", "travel"]

function toggleChallengePreview(theme) {
  $('.icon').removeClass('active')
  $('.challenge-box').hide()
  $('.challenge-box.' + theme).show()
  $('.icon.' + theme).addClass('active')
  current_preview = themes.indexOf(theme)
}

function nextChallengePreview() {
  if (current_preview == 9) {
    current_preview = 0
  } else {
    current_preview += 1
  }
  toggleChallengePreview(themes[current_preview])
}

function prevChallengePreview() {
  if (current_preview == 0) {
    current_preview = 9
  } else {
    current_preview -= 1
  }
  toggleChallengePreview(themes[current_preview])
}

function lastStep(el) {
  active_step = $(el).parent().siblings('.step.active')
  active_step.removeClass('active')
  active_step.prev('.step').addClass('active')
  if ($(el).parents('.device').find('.step.active').index() == 1) {
    $(el).hide()
  }
  if ($(el).parents('.device').find('.step.active').index() < 3) {
    $(el).siblings('.next').show()
  }
}

function nextStep(el) {
  active_step = $(el).parent().siblings('.step.active')
  active_step.removeClass('active')
  active_step.next('.step').addClass('active')
  if ($(el).parents('.device').find('.step.active').index() == 3) {
    $(el).hide()
  }
  if ($(el).parents('.device').find('.step.active').index() > 1) {
    $(el).siblings('.last').show()
  }
}