class TestsController < ApplicationController
  before_action :find_test

  def index
    @tests = Test.all
  end

  def show
  end

  private

  def find_test
    @test = Test.find(params[:id]) if params[:id]
  end
end
