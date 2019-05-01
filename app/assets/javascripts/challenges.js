$(window).on('load', function() {
  if(window.location.pathname.startsWith('/challenges') && !already_unlocked) {
    $('#challenge-modal').modal('show');
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
    document.getElementById('modal-close-button').onclick = function(){$('#challenge-modal').modal('hide');};
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

$(document).on("click", ".challenge-box .show-hidden" , function(){
  $(this).parents('.challenge-info').children('.hidden').toggle();
  $(this).find('i').toggle();
});

$(document).on('click', '.add-challenge-button', function(){
  $.post('/challenges/add', {challenge_name:'test challenge name',theme:challengeName,length_of_challenge:$(this).parents('.start-challenge').children('select').val()})
  .then( function(data) {
    if (data.showPopover) {
      $('#challenge_added_popover').popover({
        html: true,
        template: '<div class="popover challenge_added_popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>',
        content: "The test challenge challenge has been added to your challenges!"
      }).popover('show');
    }
  })
  // TODO: change this to set challenge_name to html tag of the challenge box
});
