// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
//  Keith-wood.name. 2014. jQuery Countdown. [online] 
// Available at: http://keith-wood.name/countdown.html [Accessed: 4 Mar 2014].
 //
  
 
jQuery(document).on("ready page:load", function() {
  $(function () { 
    $('#until2d').countdown({until: '+10d', format: 'dHMS'});
  });
});