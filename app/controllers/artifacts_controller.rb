class ArtifactsController < ApplicationController
  before_filter :authenticate_user!

  # GET /artifacts/1
  # GET /artifacts/1.json
  def show
    @artifact = Artifact.find(params[:id])
    @image = @artifact.images.build
    @images = Image.find(:all, conditions: ['artifact_id = ?', @artifact.id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artifact }
    end
  end

  # GET /artifacts/new
  # GET /artifacts/new.json
  def new
    @artifact = Artifact.new
    @artifact.token = @artifact.generate_token
    @image = @artifact.images.build
    @images = []

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artifact }
    end
  end

  # GET /artifacts/1/edit
  def edit
    @artifact = Artifact.find(params[:id])
    @image = @artifact.images.build
    @images = []
  end

  # POST /artifacts
  # POST /artifacts.json
  def create
    @artifact = current_user.artifacts.new(params[:artifact])
    @images = Image.where(:artifact_token => @artifact.token)
    @artifact.images << @images

    respond_to do |format|
      if @artifact.save
        format.html { redirect_to @artifact }
        format.json { render json: @artifact, status: :created, location: @artifact }
      else
        format.html { render action: "new" }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artifacts/1
  # PUT /artifacts/1.json
  def update
    @artifact = Artifact.find(params[:id])

    respond_to do |format|
      if @artifact.update_attributes(params[:artifact])
        format.html { redirect_to @artifact, notice: 'Artifact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifacts/1
  # DELETE /artifacts/1.json
  def destroy
    @artifact = Artifact.find(params[:id])
    @artifact.destroy

    respond_to do |format|
      format.html { redirect_to artifacts_url }
      format.json { head :no_content }
    end
  end
end
