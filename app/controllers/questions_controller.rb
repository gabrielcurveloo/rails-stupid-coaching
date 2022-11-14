class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.ends_with?('I am going to work')
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      return @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
