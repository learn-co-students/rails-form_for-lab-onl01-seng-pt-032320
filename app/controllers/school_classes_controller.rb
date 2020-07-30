class SchoolClassesController < ApplicationController
    def index
		@school_classes = SchoolClass.all
	end

    def show
        @school_class = SchoolClass.find_by_id(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

    def create
        binding.pry 
      @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
      @school_class.save 
	  redirect_to schoolclass_path(@school_class)
	end

	def edit
		@school_class = SchoolClass.find(params[:id])
	end

	def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(params.require(:school_class).permit(:title, :room_number))
	  redirect_to schoolclass_path(@school_class)
	end
end 