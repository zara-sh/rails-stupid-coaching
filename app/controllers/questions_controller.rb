class QuestionsController < ApplicationController

  def answer
  @question = params[:query]
  @coach_answer = coach_answer(@question)
  end

  def ask
  end

  def home
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
      answer = "I don't care, get dressed and go to work!"

      if your_message.include? "?"
        answer = "Silly question, get dressed and go to work!"

      elsif your_message == "I am going to work right now!"
        answer = ""
      end
      answer
  end



end
