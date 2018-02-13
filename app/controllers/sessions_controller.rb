class SessionsController < ApplicationController
	def new
  end



  before_filter :ensure_user!


  def ensure_user
  	unless current_user
  		redirect_to new_user_registration_path
  		
  	end

  end

=begin
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
=end

end
