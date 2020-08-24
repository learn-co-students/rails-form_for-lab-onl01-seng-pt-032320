class SchoolClassesController < ApplicationController
    def index
    end

    def new
        @school_class = SchoolClass.new
       # binding.pry
    end

    def create
        # binding.pry
        @school_class = SchoolClass.new(school_class_params) #strongparams
        @school_class.save
       # binding.pry
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find_by_id(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
        #binding.pry
    end

    def update
        @school_class = SchoolClass.find_by_id(params[:id])
        @school_class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

    def school_class_params(*args)
        params.require(:school_class).permit!
    end
end