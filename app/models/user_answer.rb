class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :category_quiz_question
  belongs_to :category_question_choice
end
