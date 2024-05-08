class CreateCategoryQuizQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :category_quiz_questions do |t|
      t.references :category, null: false, foreign_key: true
      t.text :content, null: false, limit: 50

      t.timestamps
    end
  end
end
