class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :public
      t.integer :parent_category_id

      t.timestamps
    end
  end
end
