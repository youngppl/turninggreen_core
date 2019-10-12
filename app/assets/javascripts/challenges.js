$(window).on('load', function() {
  if (window.location.pathname.startsWith('/challenges') && !already_unlocked) {
    // $('#challenge-modal').on('shown', startVideo())
    // $('#challenge-modal').modal('show');
  }
});

$(window).on('turbolinks:load', function() {
  if (window.location.pathname == '/challenges/completed') {
    params = new URLSearchParams(window.location.search);
    if (params.get('sort_by') == null) {
      option = 'theme'
    } else {
      option = params.get('sort_by')
    }
    $('.challenges-filter .'+option).addClass('active');
  }
});

var player;

function onPlayerReady(event) {
  if (challengeName == "Food") {
    player.loadVideoById({
      videoId: challengeVideoID,
      endSeconds: 324
    });
  }
  if (challengeName == "Water") {
    player.loadVideoById({
      videoId: challengeVideoID,
      startSeconds: 25,
      endSeconds: 331
    });
  }
  if(challengeName == "Biodiversity") {
    player.loadVideoById({
      videoId: challengeVideoID,
      startSeconds: 4,
      endSeconds: 244
    });
  }
  event.target.playVideo();
}

function startVideo() {
  if (player) {
    player.destroy();
    player = null;
    onYouTubeIframeAPIReady();
  }
  // $('.first')[0].style.display = 'none';
  // $('.second')[0].style.display = 'block';
  var tag = document.createElement('script');
  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
}

$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
});

function toLastSlide(event) {
  if (event.data == YT.PlayerState.ENDED) {
    player.destroy();
    player = null;
    $('.first')[0].style.display = 'none';
    $('#challenge-modal .modal-content')[0].style.height = '330px';
    $('#challenge-modal .modal-content')[0].style.width = '600px';
    $('.second')[0].style.display = 'block';
    document.getElementById('modal-close-button').onclick = function() {
      $('#challenge-modal').modal('hide');
    };
    $('.themes-page-overlay').hide();
    $('.challenge-page').show();
    $.post("/challenges/unlock", {
      challenge: challengeName
    });
  }
}

function onYouTubeIframeAPIReady() {
  if (showVideo) {
    player = new YT.Player('video', {
      height: '406',
      width: '720',
      videoId: challengeVideoID,
      events: {
        'onReady': onPlayerReady,
        'onStateChange': toLastSlide
      }
    });
  }
}

$(document).on("click", ".dropdown-click ", function() {
  $(this).find('.up').toggle();
  $(this).find('.down').toggle();
  $(this).find('.fa-chevron-down').toggle();
  $(this).find('.fa-chevron-up').toggle();
  $(this).parent().children('.hidden').toggle()
});

$(document).on('click', '.add-challenge-button', function(event) {
  var d = new Date();
  length = $(this).parent().children('select').val()
  end_date = new Date(Date.now() + (6.04e+8 * length))
  challenge_name = $(this).parentsUntil('.challenge-box').find('.name').text()
  $.post('/challenges/add', {
      challenge_name: challenge_name,
      theme: challengeName,
      length_of_challenge: length,
      date_complete: end_date,
      completed: false
    })
    .then(function(data) {
      if (data.showPopover) {
        $('#challenge_added_popover').popover({
          html: true,
          template: '<div class="popover challenge_added_popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>',
          content: '<div type="button" class="close">&times;</div>The '+ challenge_name +' challenge has been added to your challenges!'
        }).popover('show');
      }
      $(event.target).parent().replaceWith("<div class=\"challenge-in-progress\"><h2 class=\"heading\">🏃‍♀️Challenge in progress…</h2><h2 class=\"stat\">ends on " + (end_date.getMonth() + 1) + "/" + end_date.getDate() + "</h2></div>")
    })
});

function sortChallengesByFilter(criteria) {
  window.location.search = "?sort_by=" + criteria;
}

function showReflectionModal(event) {
  $(event.target).parent().children(".reflection-modal").modal()
}
