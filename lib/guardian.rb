require "guardian/version"
require 'guardian/engine'
ActionController::Base.send(:include, Guardian)

module Guardian
    
  def guard(vars = { :threshold => 2})
    if params[:duration] && params[:duration].to_i < vars[:threshold]
      logger.info "\n"
      logger.info "+++++++++++++++++++++++++++++++++++++"
      logger.info "GUARDIAN IS REJECTION FORM SUBMISSION"
      logger.info "Page duration: #{params[:duration]}"
      logger.info "Threhold: #{vars[:threshold]}"
      logger.info "+++++++++++++++++++++++++++++++++++++"
      logger.info "\n"
		  redirect_to "/"
    end
  end

end
