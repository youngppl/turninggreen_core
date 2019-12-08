$(window).on('load', function() {
  $('[data-toggle="tooltip"]').tooltip()
  $('input[type=date]').on('click', function(e) {
    e.preventDefault();
  })
  $([name='user[birthday]']).on('click', function() {
    return false;
  })
});

function save_timezone() {
  var tz = jstz.determine().name();
  document.cookie = 'timezone' + '=' + tz;
}

function convertDate() {
  date = new Date($('#datepicker').val());
  $('#datepicker').val(date.toISOString().substring(0, 10));
}

function updateCountryField() {
  if (event.target.value != 'NO') {
    $('#user_country').val('United States')
  }
}

function updateStateField() {
  if (event.target.value != 'United States') {
    $('#user_state').val('NO')
  }
}
