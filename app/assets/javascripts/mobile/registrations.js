function checkBirthday(el) {
  if (el.value && (new Date().getFullYear() - new Date(el.value).getFullYear() <= 13)) {
    $('.birthday.error').show()
    $('.input.birthday').addClass('invalid')
    disableNextButton()
  } else {
    $('.birthday.error').hide()
    $('.input.birthday').removeClass('invalid')
    activateNextButton()
  }
}

function checkPasswords() {
  password = $('.input.password').val()
  confirm = $('.input.confirm').val()
  if (password.length >= 8) {
    $('.password.error').hide()
    $('.input.password').removeClass('invalid')
  } else {
    $('.password.error').show()
    $('.input.password').addClass('invalid')
  }

  if (password == confirm) {
    $('.confirm.error').hide()
    $('.input.confirm').removeClass('invalid')
  } else {
    $('.confirm.error').show()
    $('.input.confirm').addClass('invalid')
  }

  if (password.length >= 8 && password == confirm) $('.account-button').prop('disabled', false)
  else $('.account-button').prop('disabled', true)
}

function allowNextButton(el) {
  empty = true
  $(el).siblings('input').addBack().each(function () {
    if ($(this).val() || this.validity.valid){
      empty = false
    } else {
      empty = true
    }
  })
  if (empty) {
    activateNextButton()
  } else {
    disableNextButton()
  }
}

function activateNextButton(){
  $('.next-button .disabled').hide()
  $('.next-button .active').show()
}

function disableNextButton(){
  $('.next-button .disabled').show()
  $('.next-button .active').hide()
}

currentSection = 1
function nextSection(el) {
  if ($(el).children('.next-button .active').is(':visible')){
    $('.section._' + currentSection).hide()
    currentSection++
    $('.section._' + currentSection).show()
    disableNextButton()
  }

  if (currentSection == 4){
    $('.next-button .active').hide()
    $('.next-button .disabled').hide()
  }
}
