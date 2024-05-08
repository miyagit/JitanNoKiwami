class CategoryQuestionChoice < ApplicationRecord
  belongs_to :category_quiz_question
  has_many :user_answers, dependent: :destroy
  validates :content, presence: true, length: { maximum: 30 }
end
