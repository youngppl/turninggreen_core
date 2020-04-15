function toggleSlide() {
    $(this).find('.carousel-indicators').hide()
    $(this).find('.controls').css('display', 'flex')
    // toggle slider if swipe slid
    index = $(this).find('.carousel-item.active').index()
    if (index == 1 || index == 2) {
        $(this).find('.handle').toggleClass('toggled')
    }
    if (index == 1) {
        $(this).find('.slide span').replaceWith('<span class="text-right">Tap to go back</span>')
    } else if (index == 2) {
        $(this).find('.slide span').replaceWith('<span>Tap to learn more</span>')
    }
}

function toggleChallengeInfo(el) {
    // change slide
    if ($(el).parents('.carousel').find('.carousel-item.active').index() == 1) {
        $(el).parents('.carousel').carousel(2)
    } else {
        $(el).parents('.carousel').carousel(1)
    }
}

function startChallenge(el) {
    var d = new Date();
    length_select = $(el).siblings('select')
    length = (length_select.val()) ? Number(length_select.val()) : 0
    end_date = (length == 0) ? new Date(Date.now() + (6.04e+8 * 4)) : new Date(Date.now() + (6.04e+8 * length))
    challenge_name = $(el).parents('.start-challenge-popup').data('challenge_name')
    $.post('/challenges/add', {
        challenge_name: challenge_name,
        theme: challengeName,
        length_of_challenge: length,
        date_complete: end_date,
        completed: false
    })
    $('#challenge-points').show()
}