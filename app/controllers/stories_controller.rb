require 'faker'

class StoriesController < ApplicationController
    
    def index
        stories = Story.all
        finished_stories = stories.select {|story| story.chapters.length >= 5}
        stories_by_new = finished_stories.reverse
        render json: stories_by_new
    end

    def show
        story = Story.find(params[:id])
        render json: story
    end

    def last
        story = Story.last
        if story.chapters.length < 5
            render json: story
        else
            title = Faker::Book.title
            new_story = Story.create(title: title)
            render json: new_story
        end
    end

end
