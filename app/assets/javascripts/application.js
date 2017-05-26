//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

(function($){
  var card = $('.card').height(0);
  card.mouseover(function(e){
    card.animate({height:400},400);
  })

})(jQuery);
