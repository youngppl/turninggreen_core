themes = ["waste", "body", "fashion", "water", "food", "biodiversity", "clean", "wellness", "home", "travel"]

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