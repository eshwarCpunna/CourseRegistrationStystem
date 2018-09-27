Rails.application.routes.draw do

	

	


	#Authentication related 

	# to root to login on opening http://localhost:3000/
	
	root :to => redirect('/login')
	# log in page with form:
	get '/login'     => 'user_sessions#new'

	# create (post) action for when log in form is submitted:
	post '/login'    => 'user_sessions#create'
	
	get '/loginTutor'  => 'tutor_sessions#new'

	post '/loginTutor' => 'tutor_sessions#create'

	delete '/logoutTutor' => 'tutor_sessions#destroy'
	# delete action to log out:
	delete '/logout' => 'user_sessions#destroy' 

	# Student related and it requets


	get 'students/profile'  => 'students#registeredCourses'

  	# sign up page with form:
	get 'student/new' => 'students#new'

	get '/edit' => 'students#edit'

	patch '/student' => 'students#update'  


	post '/students' => 'students#create'

	post '/request' => 'students#requestTutor'

	get '/requeststatus' => 'students#viewStatus'

	get '/availableCourses' => 'students#availableCourses'

	

	# Tutors related

	get '/requestsrec' => 'tutors#accessRequests'

	patch 'tutors/reqRejUpdate' => 'tutors#reqRejUpdate'


	patch 'tutors/reqAccUpdate' => 'tutors#reqAccUpdate'

	get 'tutors/registeredStudents'  => 'tutors#registeredStudents'

end
