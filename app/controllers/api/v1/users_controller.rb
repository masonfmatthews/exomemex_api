class Api::V1::UsersController < ApplicationController
  before_action :check_for_token

  def index
    ClipMailer.new_clip("masonfoxmatthews@yahoo.com").deliver_now
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  private def user_params
    params.require(:user).permit(:name, :email)
  end
end
