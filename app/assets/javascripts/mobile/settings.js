function showSettingsPopup() {
    $('.settings-popup').show()
    $('.menu').hide()
    $('.settings-popup .back-button').on('click', hideSettingsPopup)
}

function hideSettingsPopup() {
    $('.settings-popup').hide()
    $('.menu').show()
}

function showPopout(popout) {
    $('.settings-popup .content').hide()
    $('.' + popout + '.popout').addClass('show')
    $('.settings-popup .back-button').off('click').on('click', hidePopout)
}

function hidePopout() {
    $('.settings-popup .content').show()
    $('.settings-popup .popout').removeClass('show')
    $('.settings-popup .back-button').off('click').on('click', hideSettingsPopup)
}

function updateProfile() {
    sendUpdateRequest({
        "email": $('#email-input').val(),
        "state": $('#user_state').val(),
        "country": $('#user_country').val(),
    })
    hidePopout()
}

function updatePermissions() {
    permissions_array = []

    if ($('#location-checkbox').is(':checked'))
        permissions_array.push('location')
    else
        permissions_array.push(null)

    if ($('#permission-checkbox').is(':checked'))
        permissions_array.push('challenges')
    else
        permissions_array.push(null)

    sendUpdateRequest({
        "permissions": permissions_array
    })
}

function sendUpdateRequest(params) {
    $.post('update-user', {
        "user": params
    })
}

function enableSaveButton(el) {
    $(el).parents('.popout').find('input, select').each(function () {
        if ($(this).val() != $(this).data('orig')) {
            $(el).parents('.popout').find('.save').prop('disabled', false)
            return false;
        }
        $(el).parents('.popout').find('.save').prop('disabled', true)
    })
}

function checkPasswords(el) {
    if ($('#password-input').val().length < 8) {
        $('.password.error').show()
    } else {
        $('.password.error').hide()
    }

    if ($('#password-input').val() != $('#confirm-password-input').val()) {
        $('.confirm.error').show()
    } else {
        $('.confirm.error').hide()
    }

    if ($('#password-input').val().length >= 8 && $('#password-input').val() == $('#confirm-password-input').val()) {
        $(el).parents('.popout').find('.save').prop('disabled', false)
    } else {
        $(el).parents('.popout').find('.save').prop('disabled', true)
    }
}

function updatePassword() {
    sendUpdateRequest({
        'password': $('#password-input').val(),
        'password_confirmation': $('#confirm-password-input').val()
    })
}