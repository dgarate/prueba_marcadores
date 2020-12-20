class CreateBookmarkTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmark_types do |t|
      t.references :bookmark, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
