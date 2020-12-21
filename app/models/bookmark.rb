class Bookmark < ApplicationRecord
    has_many :bookmark_types, dependent: :destroy
    has_many :types, through: :bookmark_types
    has_many :bookmark_categories, dependent: :destroy
    has_many :categories, through: :bookmark_categories


    

    def bookmark_category
        @bookmark_category = []
        bookmark_categories.each do |bkmctg| 
            @bookmark_category.push("#{bkmctg.category.name} ") 
        end
        @bookmark_category.sort.join(', ')
    end 

    def bookmark_type
        @bookmark_type = []
        bookmark_types.each do |bkmtp| 
            @bookmark_type.push("#{bkmtp.type.name} ") 
        end
        @bookmark_type.sort.join(', ')
    end 

end
