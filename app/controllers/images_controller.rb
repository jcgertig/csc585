class ImagesController < ApplicationController
  def index

    @artifact = Artifact.find(params[:artifact_id])

    @images = @artifact.images

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  def new
    respond_to do |format|
      if params[:artifact_id]
        @artifact = Artifact.find(params[:artifact_id])
        @image = @artifact.images.build
      else
        redirect_to new_artifact_path
      end
      format.html
      format.json { render json: @image}
    end
  end

  def edit
    @image = Image.find(params[:id])
    @artifact = Artifact.find(@image.artifact_id)
  end

  def create
    i_attr = Hash.new
    i_attr[:artifact_id] = params[:artifact_id]
    Rails.logger.debug("[debug] : #{i_attr}");

    i_attr[:file] = params[:image][:image].first if params[:image][:image].class == Array
    Rails.logger.debug("[debug] : #{i_attr[:file]}" );

    if params[:artifact_id]
      @artifact = Artifact.find(params[:artifact_id])
      @image = @artifact.images.build(i_attr)
    else
      @image = Image.new(i_attr)
    end

    if @image.save
      respond_to do |format|
        format.html {
          render :json => [@image.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json {
          render :json => [@image.to_jq_upload].to_json
        }
      end
    else
      render :json => [{:error => "custom_failure"}], status: 304
    end
  end

  def update
    @artifact = Artifact.find(params[:artifact_id])
    @image = @artifact.images.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to artifact_path(@artifact), notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @artifact = Artifact.find(params[:artifact_id])
    @image = @artifact.images.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to @artifact }
      format.js
    end
  end

  def make_default
    @image = Image.find(params[:id])
    @artifact = Artifact.find(params[:artifact_id])

    @artifact.cover = @image.id
    @artifact.save

    respond_to do |format|
      format.js
    end
  end
end
