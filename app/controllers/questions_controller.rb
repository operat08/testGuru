class QuestionsController < ApplicationController
  before_action :find_test

  rescue_from ActiveRecord::RecordInvalid, with: :rescue_with_question_created
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    questions = @test.questions.pluck(:title)
    render html: "<p>#{questions.join("<br>")}</p>".html_safe
  end

  def create
    question = @test.questions.create!(params.require(:question).permit(:title))
    render html: "Question #{question.title} has been created"
  end

  def new; end

  def show
    question_id = params['id']
    question = @test.questions.find(question_id)

    render html: question.title
  end

  def destroy
    question_id = params['id']
    Question.find_by_id(question_id).destroy
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: "Question not found"
  end

  def rescue_with_question_created(err)
    render plain: err.message
  end
end
