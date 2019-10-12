$(window).on('load', function(){
  $('[data-toggle="tooltip"]').tooltip()
});

function save_timezone() {
  var tz = jstz.determine().name();
  document.cookie = 'timezone' + '=' + tz;
}

function show_filename() {
  var fileInput = document.getElementsByClassName('upload-btn')[0];
  document.getElementById("uploadFile").innerHTML = fileInput.files[0].name;
}

var $uploadCrop, rawImg;

function blobToFile(theBlob, fileName){
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

$(window).on('shown.bs.modal', function(e) {
  if(e.target==$('#pic-input-dialog')[0]){
    readFile(document.getElementById('upload-photo-input'));
    $uploadCrop = $('#upload-croppie').croppie({
      enableExif: true,
      url: rawImg,
      viewport: {
        width: 200,
        height: 200,
        type: 'circle'
      },
      boundary: {
        width: 300,
        height: 300
      }
    });
  }
});

$(window).on('hidden.bs.modal', function(e) {
  if(e.target==$('#pic-input-dialog')[0]){
    $('#upload-croppie').croppie('destroy');
  }
});


function updatePicture() {
  $uploadCrop.croppie("result", {
      type: 'blob',
      circle: true
    }).then(function(blob) {
        "use strict";
        var input = document.querySelector('input[type=file]');
        var url = input.dataset.directUploadUrl;
        var upload = new ActiveStorage.DirectUpload(blobToFile(blob, "pic-upload.png"), url);

        upload.create(function (error, blob) {
          if (error) {
            alert(error);
          } else {
            var hiddenField = document.createElement('input');
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("value", blob.signed_id);
            hiddenField.name = input.name;
            document.querySelector('form').appendChild(hiddenField);
            document.querySelector('form').submit();
          }
        });

    });
}

function convertDate() {
  date = new Date($('#datepicker').val());
  $('#datepicker').val(date.toISOString().substring(0,10));
}

function updateCountryField() {
  if(event.target.value != 'NO') {
    $('#user_country').val('United States')
  }
}

function updateStateField() {
  if(event.target.value != 'United States') {
    $('#user_state').val('NO')
  }
}
