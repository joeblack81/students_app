class Api::V1::ExamsController < Api::V0::ExamsController


  def create
    result = CreateExam.call(params: exam_params, response: @response)
    render json: result.response, status: result.success? ? :created : :unprocessable_entity
  end

  private

  def exam_params
    params.require(:exam).permit(:student_id, :completed, :remaining_time, :original_time, :number_of_questions)
  end
end