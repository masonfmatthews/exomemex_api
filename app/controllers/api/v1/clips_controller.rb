class Api::V1::ClipsController < ApplicationController
  def show
    render json: {message: "Made it!"}
  end

  def create
    clip = Clip.create!(name: params[:name], clip: params[:clip])
    render json: {clip_url: clip.clip.url}
  end
end
