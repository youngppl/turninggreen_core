$(window).on('load', function(){
  $('[data-toggle="tooltip"]').tooltip()
});

function save_timezone() {
  var tz = jstz.determine().name();
  document.cookie = 'timezone' + '=' + tz;
}

// function show_filename() {
//   var fileInput = document.getElementsByClassName('upload-btn')[0];
//   document.getElementById("uploadFile").innerHTML = fileInput.files[0].name;
// }

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
