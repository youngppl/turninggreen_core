function loadUpload(event) {
  var getImagePath = URL.createObjectURL(event.target.files[0]);
  $('.photo-upload').css('background-image', 'url(' + getImagePath + ')');
}
