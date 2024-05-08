class UserAnswersController < ApplicationController
  def new
    @user_answer = UserAnswer.new
  end
end
