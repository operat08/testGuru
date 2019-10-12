class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question

  rescue_from ActiveRecord::RecordInvalid, with: :rescue_with_question_created
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    questions = @test.questions.pluck(:title)
    render html: "<p>#{questions.join("<br>")}</p>".html_safe
  end

  def create
    question = @test.questions.create!(question_params)
    render html: "Question #{question.title} has been created"
  end

  def new; end

  def show
    render html: @question.title
  end

  def destroy
    @question.destroy
  end

  private

  def find_test
    @test = Test.find(params[:test_id]) if params[:test_id]
  end

  def rescue_with_question_not_found(err)
    render plain: "Question not found, #{err}"
  end

  def rescue_with_question_created(err)
    render plain: err.message
  end

  def find_question
    @question = Question.find(params[:id]) if params[:id]
  end

  def question_params
    params.require(:question).permit(:title)
  end
end
