class Api::V1::ClipsController < ApplicationController
  def show
    render json: {message: "Made it!"}
  end
end
