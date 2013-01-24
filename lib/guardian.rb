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
  		logger.info "GUARD IT!!" unless params[:guardian_duration].to_i > THRESHOLD
  		redirect_to "/" unless params[:guardian_duration].to_i > THRESHOLD
  	end
  end

  def guarded?(params)
  	params.keys.include?('guardian_duration')
  end
end
