require "guardian/version"
require 'guardian/engine'
ActionController::Base.send(:include, Guardian)

module Guardian

  included do
    append_before_filter :guard
  end
    
  def guard(vars = { :threshold => 2})
  	if guarded?(params)
  		redirect_to "/" unless params[:duration].to_i > vars[:threshold]
  	end
  end

  def guarded?(params)
  	params.keys.include?('duration')
  end

end
