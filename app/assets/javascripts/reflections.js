function loadUpload(event) {
  var getImagePath = URL.createObjectURL(event.target.files[0]);
  $(event.target).parent().parent().css('background-image', 'url(' + getImagePath + ')');
}
