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
  // $('.modal-close')[0].style.display = 'none';
  $('.modal-content')[0].style.height = '595px';
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
    $('.modal-close')[0].style.display = 'block';
    $('.close')[0].onclick = function(){$('#challenge-modal').modal('hide');};
    $('.modal-content')[0].style.height = '488px';
    $.post("/challenges/unlock", {challenge:challengeName});
  }
}
function onYouTubeIframeAPIReady() {
  if(showVideo) {
    player = new YT.Player('video', {
      height: '390',
      width: '640',
      videoId: challengeVideoID,
      events: {
        'onReady': onPlayerReady,
        'onStateChange': toThirdSlide
      }
    });

   }
}
