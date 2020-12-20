class Bookmark < ApplicationRecord
    has_many :bookmark_types, dependent: :destroy
    has_many :types, through: :bookmark_types
    has_many :bookmark_categories, dependent: :destroy
    has_many :categories, through: :bookmark_categories
end
