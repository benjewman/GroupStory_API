class ChaptersController < ApplicationController
    def index
        chapters = Chapter.all
        render json: chapters 
    end
end
