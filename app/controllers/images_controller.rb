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
    @img = @artifact.images.build(file: params[:image]['image'], user_id: current_user.id)
    
    respond_to do |format|
      if @img.save
        format.html { redirect_to @artifact }
        format.json { render json: @img, status: :created, location: @artifact }
      else
        format.html { render action: "new" }
        format.json { render json: @img.errors, status: :unprocessable_entity }
      end
    end
  end
end
