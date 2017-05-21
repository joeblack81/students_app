class GenerateQuestions
  include Interactor

  def call
    context.response[:questions] = Question.all.limit(context.number_of_questions)
  end
end