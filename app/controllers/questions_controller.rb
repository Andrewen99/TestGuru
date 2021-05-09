class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question, only: %i[show destroy]
  before_action :find_questions, only: %i[index create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def show; end

  def index
    render inline: "<p>Questions for '<%= @test.title %>' test: <%= @questions.pluck(:id, :body) %></p>"
  end

  def new; end

  def create
    question = @questions.create(question_params)
    render plain: question.inspect
  end

  def destroy
    @question.destroy
    redirect_to test_questions_path(@test)
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = @test.questions.find(params[:id])
  end

  def find_questions
    @questions = @test.questions
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
