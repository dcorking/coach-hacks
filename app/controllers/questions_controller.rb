class QuestionsController < ApplicationController
  # POST /questions
  # POST /questions.json
  def ask
    @answer.process(question_params)

    unless @errors
      render :show, status: :ok
    else
      render json: @errors, status: :unprocessable_entity
    end
  end

  private

  # placeholder to do something with the question
  def process(question_params)
    @answer=Object.new
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def question_params
    params.fetch(:question, {})
  end
end
