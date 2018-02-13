class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  


 def sanitize_devise_params
 	devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
 end

=begin
def hello
	render html: "hello"
end

before_action :require_login

  private

  def require_login
    unless @logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_registration_path # halts request cycle
    end

  end
=end


end
