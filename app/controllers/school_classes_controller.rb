class SchoolClassesController < ApplicationController



    def new
        @class = SchoolClass.new
    end

    def create
        @class = SchoolClass.create(school_class: params[:school_class], room_number: params[:room_number])
        redirect_to 
    end
end