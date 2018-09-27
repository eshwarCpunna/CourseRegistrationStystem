class TutorsController < ApplicationController
        before_action :authorizeTutor , only: [ :accessRequests, :reqRejUpdate, :reqAccUpdate,:registeredStudents]
         helper_method :counter ,:countRegStudents,:currentCourse


		def accessRequests
		@reques =  Tutor.select('students.sname,students.id as sid,date(requests.updated_at) as requestdate,departments.depname,students.semester_id as semid,students.id as sid,electives.ename as ename,electives.id as eid,requests.id as rid').joins("INNER JOIN electives ON
                                        tutors.id = electives.tutor_id 
                                        INNER JOIN requests ON
                                        requests.elective_id = electives.id
                                        INNER JOIN students ON
                                        students.id = requests.student_id
                                        INNER JOIN departments ON
                                        departments.id=students.department_id and requests.status=2 ").where(id: current_tutorUser).order('requests.updated_at ASC').all
       
       

	   end

    def currentCourse
         @coursename = Tutor.select('electives.ename as ename').joins('INNER JOIN electives ON
                                        tutors.id = electives.tutor_id ').where(id: current_tutorUser)

         courseName=nil
         @coursename.each do |e|
           courseName=e.ename.to_s
     end
    return courseName;
    end




        # to update rejection
        def reqRejUpdate
                # status 1 means rejected
                reque = Request.find_by_id(params[:rid])
                reque.status=1
                reque.save
                respond_to do |format|
                 format.html { redirect_to '/requestsrec',:notice => "student request succesfully rejected"}
                 format.json { head :no_content }
                 format.js   { render :layout => false }
                end
        end

        #to update acceptence
         def reqAccUpdate
                # status 0 means accepted
                reque = Request.find_by_id(params[:rid])
                reque.status=0
                reque.save
                respond_to do |format|
                 format.html { redirect_to '/requestsrec',:notice => "student request succesfully accepted"}
                 format.json { head :no_content }
                 format.js   { render :layout => false }
                end
        end


        def registeredStudents
        #send Course name if need to handle multiple courses
        @registered =  Tutor.select('students.sname,departments.depname,students.semester_id as semid,students.id as sid,electives.id as eid,requests.id as rid').joins("INNER JOIN electives ON
                                        tutors.id = electives.tutor_id 
                                        INNER JOIN requests ON
                                        requests.elective_id = electives.id
                                        INNER JOIN students ON
                                        students.id = requests.student_id
                                        INNER JOIN departments ON
                                        departments.id=students.department_id and requests.status=0 ").where(id: current_tutorUser)

       end

     def counter
        @counter = Tutor.joins("INNER JOIN electives ON
                                            tutors.id = electives.tutor_id 
                                            INNER JOIN requests ON
                                            requests.elective_id = electives.id
                                            INNER JOIN students ON
                                            students.id = requests.student_id
                                            INNER JOIN departments ON
                                            departments.id=students.department_id and requests.status=2 ").where(id: current_tutorUser).count

        value= @counter
       
        return value
      end

      def countRegStudents
        @registered =  Tutor.joins("INNER JOIN electives ON
                                        tutors.id = electives.tutor_id 
                                        INNER JOIN requests ON
                                        requests.elective_id = electives.id
                                        INNER JOIN students ON
                                        students.id = requests.student_id
                                        INNER JOIN departments ON
                                        departments.id=students.department_id and requests.status=0 ").where(id: current_tutorUser).count
        value= @registered
       
        return value
    end
       
      


    
end
