class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        admins_path
    end
    
    def after_sign_out_path_for(scope)
        root_path
    end
end
