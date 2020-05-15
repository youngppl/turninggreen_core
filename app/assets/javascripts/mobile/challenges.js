function toggleSlide() {
    // toggle slider if swipe slid
    index = $(this).find('.carousel-item.active').index()
    if (index == 0) {
        $(this).find('.controls').hide()
        $(this).find('.back.button').hide()
        $(this).find('.done.button').hide()
        $(this).find('.start.button').hide()
        $(this).find('.next.button').show()
    }
    if (index == 1 || index == 2) {
        $(this).find('.controls').css('display', 'flex')
        $(this).find('.back.button').show()
        $(this).find('.done.button').show()
        $(this).find('.start.button').show()
        $(this).find('.next.button').hide()
    }
    if (index == 1) {
        $(this).find('.handle').removeClass('toggled')
        $(this).find('.slide span').replaceWith('<span>Tap to learn more</span>')
    } else if (index == 2) {
        $(this).find('.handle').addClass('toggled')
        $(this).find('.slide span').replaceWith('<span class="text-right">Tap to go back</span>')
        $(this).find('.carousel-indicators li').eq(1).addClass('active')
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
    length = Number($(el).siblings('select').val())
    end_date = new Date(Date.now() + (6.04e+8 * length))
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

function startPreChallenge(el) {
    challenge_name = $(el).parents('.challenge-popup').data('challenge_name')
    $.post('/challenges/add', {
        challenge_name: challenge_name,
        theme: challengeName,
        length_of_challenge: 0,
        date_complete: new Date(Date.now()),
        completed: true
    })
    $('#pre-challenge-points').show()
}