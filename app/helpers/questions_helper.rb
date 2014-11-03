module QuestionsHelper
	def setup_question(question)
		4.times { question.answers.build }
		question
	end
end
