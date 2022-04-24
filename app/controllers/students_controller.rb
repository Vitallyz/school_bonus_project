class StudentsController < ApplicationController

    def index
        @students = Student.all
        puts "!!!!!!!!!!MY STUDENTS!!!!!!!!!!!"
        p @students.find(4)
        puts "!!!!!!!!!!MY STUDENTS!!!!!!!!!!!"
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        student = Student.find(params[:id])
        student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student
    end

    def destroy
        Student.find(params[:id]).destroy 
        redirect_to students_path
    end 
end
