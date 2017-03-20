class CoachingController < ApplicationController

  def ask
  end

  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end


  private

  def coach_answer(your_message)
    if your_message != "I am going to work right now!"
      coach_message = "I don't care, get dressed and go to work!"

      if your_message.include? "?"
        coach_message = "Silly question, get dressed and go to work!"
      end

      return coach_message
    else
      return "byebye"
    end
  end
end
