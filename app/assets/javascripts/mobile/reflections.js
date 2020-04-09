function reflectionLogProgress(el, challenge_id) {
  if ($(el).children('.next-button .active').is(':visible')) {
    // if button not disabled -> log progess
    $.post('/logs/new', {
      challenge_id: challenge_id,
      metric: $(el).siblings('.input').val()
    });
    $(el).parents(".slide").hide()
    $(el).parents(".slide").next(".slide").show()
  }
}

function checkReflectionHasText(el) {
  if ($(el).val()) {
    $(el).siblings('.next-button').children('.disabled').hide()
    $(el).siblings('.next-button').children('.active').show()
  } else {
    $(el).siblings('.next-button').children('.disabled').show()
    $(el).siblings('.next-button').children('.active').hide()
  }
}

function reflectionToNextSlide(el) {
  if ($(el).children('.next-button .active').is(':visible')) {
    $(el).parents(".slide").hide()
    $(el).parents(".slide").next(".slide").show()
  }
}

function uploadPicMobile(input) {
  tmp_url = URL.createObjectURL(input.files[0])
  $(input).siblings('.photo').html('')
  $(input).siblings('.photo').css('background-image', 'url(' + tmp_url + ')');
  $(input).siblings('.photo').css('background-color', 'transparent');
  $(input).siblings('.photo').css('border-radius', 0);

  var url = input.dataset.directUploadUrl;
  var upload = new ActiveStorage.DirectUpload(input.files[0], url);

  upload.create(function(error, blob) {
    if (error) {
      alert(error);
    } else {
      var hiddenField = document.createElement('input');
      hiddenField.setAttribute("type", "hidden");
      hiddenField.setAttribute("value", blob.signed_id);
      hiddenField.name = input.name;
      document.querySelector('form').appendChild(hiddenField);
    }
  })
}

function allowReflectionSubmitMobile(el) {
  input_box = $(el).parent()
  if (input_box.children('#upload-photo').val() != '' && input_box.children('.caption').val() != '' ) {
    $(el).parent().siblings('.submit').prop('disabled', false)
  } else {
    $(el).parent().siblings('.submit').prop('disabled', true)
  }
}

function reflectionSubmitMobile(el, challenge_id) {
  $('#points-earned-' + challenge_id).show()
  $('.reflection-card#' + challenge_id).hide()
  if ($('.reflection-cards').children('.reflection-card:visible').length == 0) {
    $('.no-reflections').show()
  }
  $(el).parents('.reflection-popup').hide()
  $(el).parents('.form-wrapper').submit()
}
