class StudentsController < ApplicationController
    def index
    end

    def new
        @student = Student.new
    end

    def create
        # binding.pry
        @student = Student.new(student_params(:title, :room_number))
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def edit
        @student = Student.find_by_id(params[:id])
    end

    def update
        @student = Student.find_by_id(params[:id])
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def student_params(*args)
        params.require(:student).permit(*args)
    end
end