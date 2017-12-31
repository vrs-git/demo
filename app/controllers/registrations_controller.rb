class RegistrationsController < Owners::RegistrationsController

	 protected

    def after_sign_up_path_for(resource_or_scope)
    
    dashboard_path 
  
  end

end