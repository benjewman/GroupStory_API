class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :chapters, :word_count

  def word_count
    chapter_content = object.chapters.map {| chapter | chapter.content }
    full_story = chapter_content.join(" ")
    word_array = full_story.split(" ")
    return word_array.length()
  end
end
