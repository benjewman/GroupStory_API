class Chapter < ApplicationRecord
    belongs_to :story
    validates :content, length: { minimum: 250, maximum: 500, too_long: "too long", too_short: "too short"}
end
