class ChaptersController < ApplicationController
    def index
        chapters = Chapter.all
        render json: chapters 
    end

    def create
        # create conditional when creating chapter that if the chapter's story has 5 chapters
        # email all those users who provided emails that they're story is finished
        chapter = Chapter.new(content: chapter_params[:content], story_id: chapter_params[:story_id])
        if chapter_params[:email].include? "@" 
            chapter.email = chapter_params[:email] 
        end
        if chapter.save
            if chapter.story.chapters.length === 5
                ChapterMailer.with(story: chapter.story).finished_story_email.deliver_now
            end
            render json: chapter
        else
            render json: {message: chapter.errors.full_messages.first}
        end
    end

    private
    def chapter_params
        params.require(:chapter).permit(:content, :story_id, :email)
    end
end
