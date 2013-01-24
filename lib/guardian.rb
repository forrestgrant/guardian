require "guardian/version"
require 'guardian/engine'

module Guardian
	THRESHOLD = 2
  
  def self.included(base)
     base.class_eval do
       before_filter :guard
     end
  end

  def guard
  	if guarded?(params)
  		redirect_to "/" unless params[:duration].to_i > THRESHOLD
  	end
  end

  def guarded?(params)
  	params.keys.include?('duration')
  end
end
