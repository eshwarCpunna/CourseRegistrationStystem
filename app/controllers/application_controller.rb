class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  	# Make the current_user method available to views also, not just controllers:
   helper_method :current_studUser, :current_tutorUser,:is_Tutor, :is_Student, :counter
    





    #before_action :require_login 
  # Returns the current logged-in user (if any).
   def current_tutorUser
      @current_tutorUser ||= Tutor.where(id: session[:user_id]) if session[:user_id]
    end

   def current_studUser
      @current_studUser ||= Student.where(id: session[:user_id]) if session[:user_id]
    end
    
    def authorizeUser
      if current_studUser == nil    
        redirect_to login_path, alert: 'You must be logged in to access this page.' 
      elsif current_studUser !=nil
         if is_Student == false
            redirect_to login_path
         end
      end
    end

      def authorizeTutor
      if current_tutorUser == nil 
        redirect_to login_path, alert: 'You must be logged in to access this page.' 
      elsif current_tutorUser !=nil
         if is_Tutor == false
          redirect_to loginTutor_path
         end
      end
    end



    

    def is_Student
  
      if current_studUser && session[:user_id].to_i >=1
            return true
          else
            return false
          end
    end


    def is_Tutor
          if current_tutorUser && session[:user_id].to_i >=5000
            return true
          else
            return false
          end
    end


end

