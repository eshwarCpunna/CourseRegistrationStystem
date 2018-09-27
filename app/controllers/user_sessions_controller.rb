class UserSessionsController < ApplicationController
	before_action :check_loggedin , only: [ :create, :new]
	 helper_method :current_studUser, :authorizeUser, :authorizeTutor

  def new
  end

  def create
      user = Student.find_by(email: params[:login][:email].downcase)
    
      if user && user.authenticate(params[:login][:password]) 
        session[:user_id] = user.id.to_s
        flash[:success] = 'Successfully logged in!'
        redirect_to '/students/profile'
      else
        # if email or password incorrect, re-render login page:
        flash[:danger] = 'Invalid email/password combination'
        render :new
      end
  end




  def destroy
    # delete the saved user_id key/value from the cookie:
       session.delete(:user_id)
       session[:user_id] = nil
       falsh[:success] = "Successfully Logged out!"
      redirect_to login_path
  end

   
  
  private
    def check_loggedin

    
      if current_studUser !=nil
        if is_Student
          redirect_to '/students/profile'
        elsif current_tutorUser !=nil 
          if is_Tutor
          redirect_to '/requestsrec'
        end
        end
      
      end
    end



end
































