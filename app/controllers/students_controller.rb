class StudentsController < ApplicationController
  # Restrict access so only logged in users can access the secret page:
 # include authorizeHelper , userHelper
  before_action :authorizeUser, only: [:profile, :requestTutor, :availableCourses, :viewStatus, :registeredCourses, :update, :edit]
 
  def new
    @student = Student.new
  end

 
  def create
    @student = Student.new(student_params)
      if @student.save
        flash[:success] = "You are registered successfully."
        redirect_to '/login'
      else
        flash[:alert] = "Account creation unsuccessfully"
        render 'new'
      end
  end
 def flag
      @flag=0;
 end

  def flagAcce
      @flagAcce=0;
 end


  def availableCourses
    #used for acceptence rate
    @totalRequest =Request.select(' sum(case when requests.status=0 then 1 else 0 end) as totalAccepted,  100.0*sum(case when requests.status=0 then 1 else 0 end)/count(*) as acceptRat,requests.elective_id as eid').joins("INNER JOIN electives ON
                                         electives.id = requests.elective_id ").group(:elective_id);

    #Used for  trending feature 
    @reque = Request.select(' count(requests.status) as cstatus,requests.elective_id as eid').joins("INNER JOIN electives ON
                                        electives.id = requests.elective_id ").group(:elective_id);#order(:cstatus);

  #  puts @req
  #  puts @req.order(:cstatus)

     @statusReg = Request.select('requests.status,electives.id as eid').joins("INNER JOIN electives ON
                                        electives.id = requests.elective_id 
                                        INNER JOIN tutors ON
                                        electives.tutor_id = tutors.id
                                        INNER JOIN departments ON
                                        departments.id=tutors.department_id").where(:student_id => current_studUser, status: [0,1,2]); 
     
     

    @electives= Student.select('semesters.no_eligibleELectives as noofelectives,electives.ecredits as credit,electives.id as eid,students.id as sid, tutors.id as tid, electives.ename,tutors.tname,departments.depname,electives.semid').joins("INNER JOIN electives ON 
                                            electives.department_id = students.department_id AND 
                                            electives.semid = students.semester_id 
                                            INNER JOIN tutors ON
                                            electives.tutor_id = tutors.id
                                            INNER JOIN departments ON
                                            electives.department_id= departments.id INNER JOIN semesters ON 
                                                                            students.semester_id=semesters.id 
                                                                            ").where(id: current_studUser) # id means student id in student table
   
    #@chek= Department.joins(:students);

    @no_of_electives=nil
    @electives.each do |e|
           @no_of_electives=e.noofelectives.to_i
     end
   
  end





  #status ===0 accepted 1 rejected 2 pending
  #To apply for course
  def requestTutor 
    @request = Request.new(:student_id => params[:sid], :elective_id => params[:eid], :status => 2)

    # to check if the student has already raised a request
    count_rows= Request.where(:student_id => params[:sid], :elective_id => params[:eid]).count


    # 0 ==> accepted;  2 ==> pending
    #to count number of requests students raised and registered in
    count_electiverequests = Request.where(:student_id => params[:sid],:status => [0,2]).count



    # ------------------------------------------------
    # Feature to get number of elective courses available for semseter
    #to count number of elgible electives based on semseter for student
      @no_of_eligible_electives = Student.select('semesters.no_eligibleELectives as no_elec').joins('INNER JOIN semesters ON 
                                                                            students.semester_id=semesters.id').where(:id => params[:sid]);
      no_of_electives= nil
      @no_of_eligible_electives.each do |e|
            no_of_electives=e.no_elec.to_i
     end
   #----------------------------------------------------
   


    # 0 ==> no request from student for that course 
    if count_rows==0 && count_electiverequests<no_of_electives
     if @request.save
         flash[:success] = "Course applied successfully."
        redirect_to '/availableCourses'
      else
          flash[:notice] = "Course application not successfull."
      end
    elsif no_of_electives>=count_electiverequests
        flash[:danger] = "You reached your limit for elective courses."
        redirect_to '/availableCourses'
    else
      flash[:danger] = "You already applied for course."
      redirect_to '/availableCourses'
    end
  end

  #To view status 
  # /requeststatus
  def viewStatus 
    # status contains requests of current user which are in pending and rejected
    @status = Request.select('requests.status,requests.comments,electives.id as eid,electives.semid,electives.ename, tutors.tname, departments.depname').joins("INNER JOIN electives ON
                                        electives.id = requests.elective_id 
                                        INNER JOIN tutors ON
                                        electives.tutor_id = tutors.id
                                        INNER JOIN departments ON
                                        departments.id=tutors.department_id").where(:student_id => current_studUser, status: [0,1,2]);  #student_id means student id in Request table


  end


  def edit
    @eid = params[:id]
    @student = Student.find( params[:id])
  end


  def update

    @student = Student.find(params[:student][:id])
    if @student.update_attributes(studentedit_params)
      flash[:success] = "Profile Updated."
        redirect_to '/availableCourses'
    else
      flash[:success] = "Profile Updation Unsuccessfull"
      render '/edit'
    end
  end


  # students/profile
  def registeredCourses
     # registe contains students registered courses
    @registe = Request.select('requests.status,electives.id as eid,electives.semid,electives.ename, tutors.tname, departments.depname').joins("INNER JOIN electives ON
                                        electives.id = requests.elective_id 
                                        INNER JOIN tutors ON
                                        electives.tutor_id = tutors.id
                                        INNER JOIN departments ON
                                        departments.id=tutors.department_id").where(:student_id => current_studUser, status: [0]); # 0 means registered #student_id means student id in Request table



  end


   
  private

  def student_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:student).permit(:sname, :j_year, :email,:department_id,:semester_id,:smobile,:semobile,:password,:password_confirmation)
  end

   def studentedit_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:student).permit(:sname,:semester_id,:smobile,:semobile,:password,:password_confirmation)
  end


  def get_profile
      id = current_studUser
      if Student.where(id: id).present?
        if Student.where(id: id).count == 1
          Student.where(id: id)
        else
          raise "Error: Multiple profiles found"
        end
      else
        raise "Error: Profile cannot be found"
      end        
  end

end