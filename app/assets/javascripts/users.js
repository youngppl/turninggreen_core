$(window).on('turbolinks:load', function(){
  $('#too_many_challenge_popover').popover({
    html: true,
    template: '<div class="popover" role="tooltip"><div class="arrow"></div><div class="border-arrow arrow" style="top: 43px;"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>'
  });
  $('#no_challenge_popover').popover({
    html: true,
    template: '<div class="popover no_challenge_popover" role="tooltip"><div class="arrow"></div><div class="border-arrow arrow" style="top: 43px;"></div><h3 class="popover-header"></h3><button type="button" class="close">&times;</button><div class="popover-body"></div></div>'
  });
});
$(document).on("click", ".popover .close" , function(){
        $(this).parents(".popover").popover('hide');
});
