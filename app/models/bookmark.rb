class Bookmark < ApplicationRecord
    has_many :bookmark_types, dependent: :destroy
    has_many :types, through: :bookmark_types
end
