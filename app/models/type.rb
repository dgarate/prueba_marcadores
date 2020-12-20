class Type < ApplicationRecord
    has_many :bookmark_types, dependent: :destroy
    has_many :bookmarks, through: :bookmark_types

    validates_uniqueness_of :name
    validates :name, presence: true
end
