class ApplicationController < ActionController::API
  private def check_for_token
    unless @current_user = User.find_by_token(params[:token])
      render json: "Incorrect Token"
    end
  end
end
