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
    $('#points-earned-' + challenge_id).modal();
  }
}

var $uploadCrop, rawImg, photo_input, container;

function blobToFile(theBlob, fileName) {
  theBlob.lastModifiedDate = new Date();
  theBlob.name = fileName;
  return theBlob;
}

function readFile(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $uploadCrop.croppie("bind", {
        url: e.target.result
      });
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    alert("Sorry, your browser doesn't support the FileReader API");
  }
}

function linkCroppie(input) {
  photo_input = input
  readFile(input);
  container = $(input).siblings('.modal').find('.modal-body')
  container.css('display', 'block')
  container.siblings('.modal-footer').find('.upload').addClass('green')
  container.siblings('.modal-footer').find('.upload').prop('disabled', false)
  container.find('.browse').hide()
  $uploadCrop = container.croppie({
    enableExif: true,
    url: rawImg,
    showZoomer: false,
    viewport: {
      width: 240,
      height: 240,
      type: 'square'
    }
  });
}

// $(window).on('hidden.bs.modal', function(e) {
//   if(e.target==$('#pic-input-dialog')[0]){
//     $('#upload-croppie').croppie('destroy');
//   }
// });


function updatePicture() {
  $uploadCrop.croppie("result", {
    type: 'blob'
  }).then(function(blob) {
    tmp_url = URL.createObjectURL(blob)
    $(photo_input).parent().css('background-image', 'url(' + tmp_url + ')');
    container.parents('.modal').modal('hide')
    "use strict";

    var input = photo_input
    var url = input.dataset.directUploadUrl;
    var upload = new ActiveStorage.DirectUpload(blobToFile(blob, "pic-upload.png"), url);

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
    });

  });
}
