require "guardian/version"
require 'guardian/engine'

module Guardian

  extend ActiveSupport::Concern

  included do
    hide_action :guard
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
