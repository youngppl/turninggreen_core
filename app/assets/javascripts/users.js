$(window).on('turbolinks:load', function() {
  $('#too_many_challenge_popover').popover({
    html: true,
    template: '<div class="popover" role="tooltip"><div class="arrow"></div><div class="border-arrow arrow" style="top: 43px;"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>'
  });
  $('#no_challenge_popover').popover({
    html: true,
    template: '<div class="popover no_challenge_popover" role="tooltip"><div class="arrow"></div><div class="border-arrow arrow" style="top: 43px;"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>'
  }).popover('show');
  $("#user_email").data("original", $("#user_email").val());
  $("#user_state").data("original", $("#user_state").val());
  $("#user_country").data("original", $("#user_country").val());
  $("#user_notifications").data("original", $("#user_notifications").val());
  $("#user_notifications_content_reminders").data("original", $("#user_notifications_content_reminders").val());
  $("#user_notifications_content_check-in").data("original", $("#user_notifications_content_check-in").val());
  $("#user_notifications_content_newsletter").data("original", $("#user_notifications_content_newsletter").val());

});
$(document).on("click", ".popover .close", function() {
  $(this).parents(".popover").popover('hide');
});

$(document).on("click", ".expand-clickable-area", function() {
  $(this).parent().children('.panel-collapse').toggle();
  $(this).parent().children('panel-heading').find('i').toggle();
});

function checkEmail() {
  if (!document.getElementById("user_email").validity.valid || $("#user_email").val() == "") {
    $(".email.error").show();
  } else {
    $(".email.error").hide();
  }
}

function allowSaveButton() {
  if ((($("#user_email").data("original") != $("#user_email").val()) || ($("#user_state").data("original") != $("#user_state").val()) || ($("#user_country").data("original") != $("#user_country").val())) && document.getElementById("user_email").validity.valid) {
    $("#profile-save-button").prop("disabled", false);
  } else {
    $("#profile-save-button").prop("disabled", true);
  }
}

function checkDeactivateForm() {
  if (document.getElementById("other").checked) {
    $("#other-textarea").prop("disabled", false);
    $(".deactivate.error").show();
  } else {
    $("#other-textarea").prop("disabled", true);
    $("#other-textarea").val("");
  }

  if ((document.getElementById("other").checked && $("#other-textarea").val().length > 6) || document.getElementById("too-much-work").checked || document.getElementById("not-safe").checked || document.getElementById("not-useful").checked) {
    $("#deactivate-next-button").prop("disabled", false);
  } else {
    $("#deactivate-next-button").prop("disabled", true);
  }

  if (document.getElementById("other").checked && $("#other-textarea").val().length < 6) {
    $(".deactivate.error").show();
    $("#deactivate-next-button").prop("disabled", true);
  } else {
    $(".deactivate.error").hide();
  }
}

function allowNotifSave() {
  if (($("#user_notifications").data("original") != $("#user_notifications").val())) {
    $("#notifications-save-button").prop("disabled", false);
  } else {
    $("#notifications-save-button").prop("disabled", true);
  }
}

function enablePasswordFields() {
  if (!!$('#user_current_password').val()) {
    $('#update-password-button').prop('disabled', false);
    $('#user_password').prop('disabled', false);
    $('#user_password_confirmation').prop('disabled', false);
  } else {
    $('#update-password-button').prop('disabled', true);
    $('#user_password').prop('disabled', true);
    $('#user_password_confirmation').prop('disabled', true);
  }
}

function cumulativeMetrics(log_to_count_to, data) {
  stop_date = log_to_count_to.xLabel;
  points = data['datasets'][0].data;
  total = 0;
  for (let val of points) {
    total += val['y'];
    if (val['t'] == stop_date) break;
  }
  return total;
}

function updateLogPrompt(e) {
  $(e).siblings('.log-input').prop('disabled', true);
  $(e).replaceWith('<h5 class="log-complete">today’s log complete!</h5>')
}
