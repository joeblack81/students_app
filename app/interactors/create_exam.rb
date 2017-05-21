class CreateExam
  include Interactor

  def call
    exam = Exam.new(context.params)
    #exam.user = context.user
    if exam.save
      context.response[:exam] = exam
      context.response.merge! GenerateQuestions.call(number_of_questions: context.params[:number_of_questions], response: context.response).response
    else
      context.fail!
    end
  end
end