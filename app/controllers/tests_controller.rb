class TestsController < ApplicationController
	before_action :set_test, only: [:show]

	def index
		tags = params[:tags] || []
		@tests = tags.empty? ? Tag.all : Test.find_by(tag: [tags]) 
	end

	def show
	end

	def new
		@test = Test.new
	end

	def create
		# corrected_parameters = test_params.reduce({}) do |acc, (k, v)|
		# 	puts "xxx #{k.inspect} #{v.inspect}"
		# 	acc[k] = k == "tags" ? v.split : v
		# 	acc
		# end

		# raise test_params.inspect

		test = Test.create({
			"description"=>"opois", 
			"tags"=>[Tag.create({"description"=>"adnan"})]
			})
		redirect_to new_test_question_path(test.id)
	end

	def set_test
		@test = Test.find(params[:id])
	end

	def test_params
		params.require(:test).permit!
	end
end
