class ImagesController < ApplicationController
  def new
    @image = Image.new
    @artifact_id = params[:artifact_id]

    respond_to do |format|
      format.html
      format.json { render json: @image}
    end
  end

  def create
    @artifact = Artifact.find(params[:artifact_id])
    #binding.pry
    params[:image]['upload'].each do |f|
      @image = Image.create!(file: f, artifact_id: params[:artifact_id], user_id: current_user.id)
    end
  end
end
