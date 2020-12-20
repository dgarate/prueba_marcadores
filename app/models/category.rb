class Category < ApplicationRecord
    has_many :bookmark_categories, dependent: :destroy
    has_many :bookmarks, through: :bookmark_categories

    validates_uniqueness_of :name
    validates :name, presence: true
end
