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
    $('.settings-popup .back-button').off('click')
    $('.settings-popup .back-button').on('click', resetPopout)
    $('.settings-popup .back-button').on('click', hidePopout)
}

function hidePopout() {
    $('.settings-popup .content').show()
    $('.settings-popup .popout').removeClass('show')
    $('.settings-popup .back-button').off('click').on('click', hideSettingsPopup)
}

function resetPopout() {
    $('.popout:visible input, select').each(function () {
        $(this).val($(this).data('orig'))
    })
    $('.popout:visible .save').prop('disabled', true)
    $('.popout:visible .changes-saved').hide()
    if ($('.notifications.popout:visible')) {
        // for notifications popout
        options = $('.notifications .frequency.options')
        options.children('input:checked').prop('checked', false)
        options.children("[id='" + options.data('orig') + "']").prop('checked', true)
    }
}

function updateProfile() {
    new_email = $('#email-input').val()
    new_state = $('#user_state').val()
    new_country = $('#user_country').val()
    sendUpdateRequest({
        "email": new_email,
        "state": new_state,
        "country": new_country,
    })
    $('#email-text').html(new_email)
    $('#location-text').html(new_state + ', ' + new_country)
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
    $('.popout:visible input, select').each(function () {
        $(this).data('orig', $(this).val())
    })
    if ($('.notifications.popout:visible'))
        $('.notifications .frequency.options').data('orig', $('.notifications .frequency.options').children('input:checked').attr('id'))
    $('.popout:visible .save').prop('disabled', true)
    $('.popout:visible .changes-saved').show()
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

function checkNotificationsChange() {
    original = $('.notifications .frequency.options').data('orig')
    if ($('.notifications .frequency.options').children('input:checked').attr('id') != original) {
        $('.notifications.popout').find('.save').prop('disabled', false)
    } else {
        $('.notifications.popout').find('.save').prop('disabled', true)
    }
}

function updateNotifications() {
    selection = $('.notifications .frequency.options').children('input:checked')
    sendUpdateRequest({
        'notifications': selection.attr('id')
    })
    $('#notifications-text').html(selection.next('span').html())
}