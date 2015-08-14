class Api::V1::ClipsController < ApplicationController

  def index
    render json: Clip.all
  end

  def show
    render json: Clip.find(params[:id])
  end

  def create
    clip = Clip.create!(clip_params)
    render json: {clip_url: clip.clip.url}
  end

  private def clip_params
    params.require(:clip).permit(:name, :clip)
  end
end
