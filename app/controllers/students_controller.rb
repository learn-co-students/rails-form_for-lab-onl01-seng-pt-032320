class StudentsController < ApplicationController
  def index
    @students = student.all
  end

  def show
    @student = student.find(params[:id])
  end

  def new
    @student = student.new
  end

  def create
    @student = student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end
   
  def update
    @student = student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = student.find(params[:id])
  end
end