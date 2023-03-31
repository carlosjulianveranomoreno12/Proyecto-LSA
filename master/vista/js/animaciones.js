$(function () {
  var effects= 'animated heartBeat fast';
  var effectsEnd='animationed oAnimationEnd mozAnimationEnd webkitAnimationEnd'
  $('#btnTraducir ,.nav-item').click(function(){
      event.preventDefault();
      $(this).addClass(effects).one(effectsEnd,function(){
        $(this).removeClass(effects);
      });
  });
});






