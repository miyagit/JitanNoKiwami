class CategoryQuizQuestion < ApplicationRecord
  belongs_to :category
  has_many :category_question_choices, dependent: :destroy
  has_many :user_answers, dependent: :destroy
  validates :content, presence: true, length: { maximum: 50 }
end
