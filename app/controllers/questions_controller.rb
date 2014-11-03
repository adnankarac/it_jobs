class QuestionsController < ApplicationController
	before_action :set_test
	before_action :set_question, only: [:edit, :show, :destroy]
	def set_test
		@test = Test.find(params[:test_id])
	end

	def set_question
		@question = Question.find(params[:id])
	end

	def index
	end

	def create
		@question = Question.create(question_params.merge({test_id: @test.id}))
		redirect_to @question
	end

	def new
		@question = Question.new
	end

	def show
	end

	def destroy
		@question.destroy
		redirect_to test_questions_path
	end

	def edit
		raise @question.inspect
	end

	def question_params
		params.require(:question).permit!
	end

	def answers_params
		params.require(:answer).permit!
	end
end
