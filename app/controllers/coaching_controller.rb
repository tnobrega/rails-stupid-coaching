class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    if @query != @query.upcase
      @answer =  coach_answer(@query)

    else
      @answer =  coach_answer_enhanced(@query)
    end
  end

  def ask
  end

  private


def coach_answer(your_message)
  m = ""

  case your_message
   when "I am going to work right now!"
    m = "Ok! Good work!"
  else
    if your_message.include? "?"
      m = "Silly question, get dressed and go to work!"
    else
      m = "I don't care, get dressed and go to work!"
      end
  end

  # if your_message != "I am going to work right now!"
  #   if your_message.include? "?"
  #     m = "Silly question, get dressed and go to work!"
  #   else
  #     m = "I don't care, get dressed and go to work!"
  #   end
  # end
  m
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  m = ""
  if your_message != "I AM GOING TO WORK RIGHT NOW!"
    m = "I can feel your motivation! #{coach_answer(your_message)}"
  end
  m
end

end
