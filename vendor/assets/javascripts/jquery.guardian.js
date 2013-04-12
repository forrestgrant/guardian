/*
 * Guardian - jQuery plugin for protecting forms from spam
 *
 * Copyright (c) 2012 Forrest Grant
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
 */

(function($){
 $.fn.guard = function(options) {
	var defaults = {
		threshold: 2
	}; 
  var options = $.extend(defaults, options);
  this.each(function() {
    $(this).append($('<input type="hidden" name="duration" id="guardian-duration" value="0" />'));
  	setInterval((function() {
	    $('input[name=duration]').val(parseInt($('input[name=duration]').val()) + 1);
	  }), 1000);
		$(this).submit(function(e){
	  	if (parseInt($('#guardian-duration').val()) < options.threshold) e.preventDefault();
	  });
	});
	return this;
 };
})(jQuery);
