(function($){$.fn.guard=function(options){var defaults={threshold:2};var options=$.extend(defaults,options);this.each(function(){$(this).append($('<input type="hidden" name="duration" id="guardian-duration" value="0" />'));setInterval((function(){$("input[name=duration]").val(parseInt($("input[name=duration]").val())+1)}),1000);$(this).submit(function(e){if(parseInt($("#guardian-duration").val())<options.threshold){e.preventDefault()}})});return this}})(jQuery);