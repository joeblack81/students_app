class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  #before_action :authenticate_user!
  #before_action :authenticated?

  def authenticated?
    render json: {}, status: :unauthorized
  end
end
