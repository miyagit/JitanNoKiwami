class CreateCategoryQuestionChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :category_question_choices do |t|
      t.references :category_quiz_question, null: false, foreign_key: true
      t.text :content, null: false, limit: 30
      t.boolean :is_correct, null: false, default: false

      t.timestamps
    end
  end
end
