class EnrollmentsController < ApplicationController

    def index
        @enrollments = Enrollment.all
        @students = Student.all

        @school_classes = SchoolClass.all

    end

    def show
        @enrollment = Enrollment.find(params[:id])
        @students = Student.all
        @school_classes = SchoolClass.all
    end

    def new
        @enrollment = Enrollment.new
        @students = Student.all
        @school_classes = SchoolClass.all
    end

    def create
        puts ("!!!!!! PARAMS FOR EROLLMENT!!!!!! DOWN")
        p (params)
        puts ("!!!!!! PARAMS FOR EROLLMENT!!!!!! UP")
        enrollment = Enrollment.create(params.require(:enrollment).permit(:school_class_id, :student_id))
        redirect_to enrollment
    end

    def edit
        @enrollment = Enrollment.find(params[:id])
    end

    def update
        enrollment = Enrollment.find(params[:id])
        enrollment.update(params.require(:enrollment).permit(:student_id, :school_class_id))
        redirect_to enrollment
    end

    def destroy
        Enrollment.find(params[:id]).destroy 
        redirect_to enrollments_path
    end 

end
