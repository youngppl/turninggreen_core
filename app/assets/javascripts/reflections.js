function loadUpload(event) {
  var getImagePath = URL.createObjectURL(event.target.files[0]);
  $(event.target).parent().parent().css('background-image', 'url(' + getImagePath + ')');
}

function submitReflection(self, challenge_id) {
  parent = $(self).parentsUntil('.panel')
  error = false
  if (!parent.find('.reflection-question').val()) {
    parent.find('.reflection-question').addClass('error')
    parent.find('#question-error').show()
    error = true
  }
  if (!parent.find('.log-input').val()) {
    parent.find('.log-input').addClass('error')
    parent.find('#log-error').show()
    error = true
  }
  if (!parent.find('#upload-photo').val()) {
    parent.find('label.upload').addClass('error')
    parent.find('#photo-error').show()
    error = true
  }
  if (!parent.find('.caption').val()) {
    parent.find('.caption').addClass('error')
    parent.find('#caption-error').show()
    error = true
  }
  if (!error) {
    parent.find('.form-wrapper').submit()
    $(self).parents('.panel').hide();
    $('#points-earned-'+challenge_id).modal();
  }
}
