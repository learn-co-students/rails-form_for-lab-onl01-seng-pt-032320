class SchoolClassesController < ApplicationController
before_action :set_classes, only: [:show, :update]
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
  end

  def create
    @school_class = SchoolClass.create(class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
   # @school_class.update(class_params(:title, :room_number))
  end

  private

  def set_classes
    @school_class = SchoolClass.find(params[:id])
  end

  def class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
