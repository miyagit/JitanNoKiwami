class CategoryQuizQuestionsController < ApplicationController
  def index
    @category_quiz_questions = CategoryQuizQuestion.order("RAND()").limit(10)
  end
end
