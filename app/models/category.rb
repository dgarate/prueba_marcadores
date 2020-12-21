class Category < ApplicationRecord
    has_many :bookmark_categories, dependent: :destroy
    has_many :bookmarks, through: :bookmark_categories

    validates_uniqueness_of :name
    validates :name, presence: true

    scope :public_category, -> {where(public: true)}

    def bookmark_category
        @bookmark_category = []
        bookmark_categories.each do |bkmctg| 
        @bookmark_category.push("#{bkmctg.bookmark.name} ") 
        end
        @bookmark_category.sort.join(', ')
    end 


end
