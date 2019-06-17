$(window).on('load', function() {
  if(window.location.pathname.startsWith('/challenges') && !already_unlocked) {
    $('#challenge-modal').modal('show');
  }
});

$(window).on('turbolinks:load', function() {
  if(window.location.pathname == '/challenges/completed') {
    params = new URLSearchParams(window.location.search);
    if (params.get('sort_by') == null) {
      option = 'recent'
    } else {
      option = params.get('sort_by')
    }
    $('.challenges-filter').val(option);
  }
});

var player;
function onPlayerReady(event) {
  if(challengeName == "Water") {
    player.loadVideoById({
      videoId: challengeVideoID,
      endSeconds: 350
    });
  }
  event.target.playVideo();
}
function nextArrow() {
  if(player){
    player.destroy();
    player = null;
    onYouTubeIframeAPIReady();
  }
  $('.first')[0].style.display = 'none';
  $('.second')[0].style.display = 'block';
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
function toThirdSlide(event) {
  if(event.data == YT.PlayerState.ENDED) {
    player.destroy();
    player = null;
    $('.second')[0].style.display = 'none';
    $('.third')[0].style.display = 'block';
    document.getElementById('modal-close-button').style.display = 'none';
    $('.themes-page-overlay').hide();
    $('.challenge-page').show();
    $.post("/challenges/unlock", {challenge:challengeName});
  }
}
function onYouTubeIframeAPIReady() {
  if(showVideo) {
    player = new YT.Player('video', {
      height: '452',
      width: '802',
      videoId: challengeVideoID,
      events: {
        'onReady': onPlayerReady,
        'onStateChange': toThirdSlide
      }
    });
   }
}

$(document).on("click", ".expand-clickable-area", function (){
  $(this).parent().children('.challenge-info').children('.hidden').toggle();
  $(this).parent().find('i').toggle();
});

$(document).on('click', '.add-challenge-button', function(event){
  $.post('/challenges/add', {challenge_name:'test challenge name',theme:challengeName,length_of_challenge:$(this).parent().children('select').val(),completed:true})
  .then( function(data) {
    if (data.showPopover) {
      $('#challenge_added_popover').popover({
        html: true,
        template: '<div class="popover challenge_added_popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>',
        content: '<div type="button" class="close">&times;</div>The test challenge challenge has been added to your challenges!'
      }).popover('show');
    }
    var d = new Date();
    $(event.target).parent().parent().html("<h5 class=\"challenge-started\">You started this challenge on " + (d.getMonth()+1) + "/" + d.getDate() + " and have " + $(event.target).parent().parent().children('select').val()*7 + " days left!</h5><h5 class=\"you-got-this\">You got this!</h5>")
  })
  // TODO: make date dynamic, read it from challenge object in backend
  // TODO: change this to set challenge_name to html tag of the challenge box
});

function sortChallengesByFilter() {
  window.location.search = "?sort_by="+$(".challenges-filter").val();
}

function showReflectionModal(event) {
  $(event.target).parent().children(".reflection-modal").modal()
}
