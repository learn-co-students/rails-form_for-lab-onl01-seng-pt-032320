class SchoolClassesController < ApplicationController
  def index
    @school_classes = School_class.all
  end

  def show 
    @school_class = School_class.find(params[:id])
  end 

  def new
    @school_class = School_class.new
  end 

  def create
    @school_class = School_class.new(post_params(:title, :room_number))
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end

  def edit
  end 

  def update
  end

  private 
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end 
end
