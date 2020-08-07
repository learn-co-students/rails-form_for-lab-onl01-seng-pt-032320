class SchoolClassesController < ApplicationController


    def new
        @class = SchoolClass.new
    end

    def create
        @class = SchoolClass.create(title: params[:title], room_number: params[:room_number])
        redirect_to school_classes(@class)
    end
end