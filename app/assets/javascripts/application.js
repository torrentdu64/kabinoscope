//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

(function($){
  var card = $('.card');
  var name = $('.card-category').css({ opacity: 0 });
  var text = $('.card-description').css({opacity: 0});


  card.mouseover(function(e){
    var t1 = new TimelineLite();
    t1.to(card, 1, {height:400});
    t1.to(name, 1,{alpha: 1});
    t1.to(text, 1.2, {alpha: 1});
    t1.to(text, 1,  {x:150,y:-200})
  })

})(jQuery);
