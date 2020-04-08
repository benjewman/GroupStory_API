class ChaptersController < ApplicationController
    def index
        chapters = Chapter.all
        render json: chapters 
    end

    def create
        chapter = Chapter.new(content: chapter_params[:content], story_id: chapter_params[:story_id])
        if chapter.save
            render json: chapter
        else
            render json: {message: "could not save"}
        end
    end

    private
    def chapter_params
        params.require(:chapter).permit(:content, :story_id)
    end
end
