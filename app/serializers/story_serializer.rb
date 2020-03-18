class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :chapters

  # def chapters
  #   # access this story's chapters and sort by the order number
  #   # maybe we don't need the order number and can sort by created_at
  #   # self.chapters.sort_by { |chapter| chapter.created_at }
  #   self.chapters
  # end
end
