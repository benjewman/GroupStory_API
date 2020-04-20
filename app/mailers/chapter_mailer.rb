class ChapterMailer < ApplicationMailer
    def finished_story_email
        @story = params[:story]
        @story.chapters.each do |chapter| 
            if chapter.email  
                mail(to: chapter.email, subject: "Your story is now finished") 
            end
        end
    end 



end
