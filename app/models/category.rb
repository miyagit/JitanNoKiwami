class Category < ApplicationRecord
  has_many :category_quiz_questions, dependent: :destroy
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 50 }
end
