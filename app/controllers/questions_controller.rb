class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
      if params[:question] == "I am going to work"
        @answer = @answers[0]
      elsif params[:question].end_with?("?")
        @answer = @answers[1]
      else
        @answer = @answers[2]
      end
  end
end
