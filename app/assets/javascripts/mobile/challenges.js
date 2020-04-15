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