

class TutorSessionsController < ApplicationController
		before_action :check_loggedin , only: [ :create, :new]
		 helper_method  :current_tutorUser

  def new
  end

  def create
   

        user = Tutor.find_by(temail: params[:loginTutor][:email].downcase)

        # Verify user exists in db and run has_secure_password's .authenticate() 
        # method to see if the password submitted on the login form was correct: 
        if user && user.authenticate(params[:loginTutor][:password]) 
          # Save the user.id in that user's session cookie:
          session[:user_id] = user.id.to_s
          # below line will reditet to page which shows recieved student requests
          flash[:success] = 'Successfully logged in!'
          redirect_to '/requestsrec'
          
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
   		redirect_to loginTutor_path, notice: "Logged out!"
  end
  
 
   

  private  
    def check_loggedin
      if current_tutorUser !=nil #&& u.id>=5000
        if is_Tutor
          redirect_to '/requestsrec'
        elsif current_studUser !=nil
          if is_Student
            redirect_to '/students/profile'
          end
        end

      end
   
    end

end

