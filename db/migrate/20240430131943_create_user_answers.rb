class CreateUserAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category_quiz_question, null: false, foreign_key: true
      t.references :category_question_choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
