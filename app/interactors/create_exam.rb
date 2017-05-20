class CreateExam
  include Interactor

  def call
    exam = Exam.new(context.params)
    #exam.user = context.user
    if exam.save
      context.exam = exam
    else
      context.fail!
    end
  end
end