class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name
    	t.integer :position
        t.timestamps null: false
    end

    add_column :articles, :category_id, :integer
    add_index :articles, :category_id
  end
end
