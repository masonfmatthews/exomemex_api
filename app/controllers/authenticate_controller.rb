class AuthenticateController < ApplicationController
  def login
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      render json: {id: u.id, token: u.token}
    else
      render json: "Incorrect email address or password."
    end
  end
end
