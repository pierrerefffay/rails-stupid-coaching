class QuestionsControllerController < ApplicationController
  ANSWERS = {
    "I am going to work" => "Great!"
  }

  def pages
  end

  def ask
  end

  def answer
    if params[:question].present?
      question = params[:question]
      if ANSWERS.key?(question)
        @answer = ANSWERS[question]
      elsif question.include?('?')
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
