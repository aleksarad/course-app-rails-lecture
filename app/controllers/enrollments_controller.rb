class EnrollmentsController < ApplicationController
    def new
        @enrollment = Enrollment.new
    end 

    def create
        @enrollment = Enrollment.create(student_id: params[:enrollment][:student], course_id:params[:enrollment][:course])
        # @student =  Student.find(params[:enrollment][:student])
        redirect_to student_path(@enrollment.student_id)

    end

    # private
    # def enrollment_params(*args)
    #     params.require(:enrollment).permit(*args)
    # end
end
