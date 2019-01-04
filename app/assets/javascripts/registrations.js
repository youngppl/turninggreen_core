function save_timezone() {
  var tz = jstz.determine().name();
  document.cookie = 'timezone' + '=' + tz;
}

function show_filename() {
  var fileInput = document.getElementsByClassName('upload-btn')[0];
  document.getElementById("uploadFile").innerHTML = fileInput.files[0].name;
}
