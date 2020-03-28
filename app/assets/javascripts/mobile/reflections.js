function checkReflectionHasText(el) {
  if ($(el).val()) {
    $(el).siblings('.next-button').children('.disabled').hide()
    $(el).siblings('.next-button').children('.active').show()
  } else {
    $(el).siblings('.next-button').children('.disabled').show()
    $(el).siblings('.next-button').children('.active').hide()
  }
}
