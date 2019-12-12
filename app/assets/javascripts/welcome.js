function toggleChallengePreview(theme) {
  $('.icon').removeClass('active')
  $('.challenge-box').hide()
  $('.challenge-box.' + theme).show()
  $('.icon.' + theme).addClass('active')
}
