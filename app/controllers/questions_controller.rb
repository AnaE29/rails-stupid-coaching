class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # Récupère question user
    @question = params[:question]
    # Réponse selon la question
    @answer = if @question.blank?
                "Please ask for something !"
              elsif @question.end_with?("?")
                "Let me think about it !"
              else
                "Give me a question."
              end
  end
end
