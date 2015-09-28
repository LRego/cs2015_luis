$(document).ready(function(){
  var speed = Math.floor((Math.random() * 90) + 1);
  var gravity = 9.8;
  var interval = 60;

  $('html').click(function() {
    var div = $("<div class=\"projectile\"></div>");
    var angle = Math.floor((Math.random() * 180) + 0);

    div.attr({'data-speed': speed, 'data-angle':angle, 'data-time':1,'data-y':event.pageY});
    div.css({top: event.pageY, left: event.pageX});
    $('.container').append(div);
  });

  setInterval(function() {
    $('.projectile').each(function() {
      var projectil_x = parseInt($(this).css('left'));
      var projectil_y = parseInt($(this).attr('data-y'));
      var angle = parseInt($(this).attr('data-angle'));
      var time = parseInt($(this).attr('data-time'));
      var new_time = (parseInt(time) + 1);
      var x = Math.round(speed * Math.cos((angle / 180) * (Math.PI)));
      var y = Math.round(speed * time - (gravity * Math.pow(time,2))/2);

      $(this).attr('data-time',new_time);
      $(this).animate({left: projectil_x + x, top: projectil_y - y},interval);
    });
  },
  interval);
});
