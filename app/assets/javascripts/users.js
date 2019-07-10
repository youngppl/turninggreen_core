$(window).on('turbolinks:load', function(){
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
});
$(document).on("click", ".popover .close" , function(){
        $(this).parents(".popover").popover('hide');
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

function allowNotifSave() {
  if ($("#user_notifications").data("original") != $("#user_notifications").val()) {
    $("#notifications-save-button").prop("disabled", false);
  } else {
    $("#notifications-save-button").prop("disabled", true);
  }
}
