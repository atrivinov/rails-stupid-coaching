# q1 = "I am going to work"
# a1 = "Great!"
# a2 = "Silly question, get dressed and go to work!"
# a3 = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = analyze_question(@question)
  end

  def analyze_question(query)
    if is_question(query)
      return "Silly question, get dressed and go to work!"
    else
      if query == "I am going to work"
        return "Great!"
      else
        return "I don't care, get dressed and go to work!"
      end
    end
  end

  def is_question(query)
    if(query)
      query.end_with?("?") ? true : false
    else
      return false
    end
  end
end
