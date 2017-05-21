class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  #before_action :authenticated?
  before_action :initialize_response

  def authenticated?
    render json: {}, status: :unauthorized
  end

  def initialize_response
    @response = {}
  end
end
