class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 30
      t.text :description, null: false, limit: 50

      t.timestamps
    end
  end
end
