module QuestionsHelper
	def setup_question(question)
		4.times { question.answers.build } if question.new_record?
		question
	end
end
