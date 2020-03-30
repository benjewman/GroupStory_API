class StoriesController < ApplicationController
    def index
        stories = Story.all
        finished_stories = stories.select {|story| story.chapters.length === 5}
        render json: finished_stories 
    end

    def show
        story = Story.find(params[:id])
        render json: story
    end
end
