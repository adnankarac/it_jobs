class TestsController < ApplicationController
	before_action :set_test, only: [:show]
	def show
		#render :text => @test.questions.map {|x| x.question}
	end

	def new
		@test = Test.new
	end

	def create
		test = Test.create(test_params)
		redirect_to new_test_question_path(test.id)
	end

	def set_test
		@test = Test.find(params[:id])
	end

	def test_params
		params.require(:test).permit!
	end
end
