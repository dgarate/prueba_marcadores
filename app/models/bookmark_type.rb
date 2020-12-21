class BookmarkType < ApplicationRecord
  belongs_to :bookmark
  belongs_to :type

  def self.group_type
    BookmarkType.group(:type).count
  end



end
