class QuestionsController < ApplicationController
  before_action :find_test

  rescue_from NoMethodError, with: :rescue_with_question_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :rescue_with_question_created

  def index
    questions = @test.questions.pluck(:title)
    render plain: questions.join("\n")
  end

  def create
    question = @test.questions.create!(params.require(:question).permit(:title))
    render plain: "Question #{question.title} has been created"
  end

  def new; end

  def show
    question_id = params['id']
    question = @test.questions.find_by_id(question_id)

    render plain: question.title
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
