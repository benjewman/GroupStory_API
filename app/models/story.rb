class Story < ApplicationRecord
    has_many :chapters

    accepts_nested_attributes_for :chapters, allow_destroy: true
    
end
