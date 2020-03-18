class ChaptersController < ApplicationController
    def index
        chapers = Chapter.all
        render json: chapters 
    end
end
