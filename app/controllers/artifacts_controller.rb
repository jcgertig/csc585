class ArtifactsController < ApplicationController
  before_filter :authenticate_user!

  # GET /artifacts/1
  # GET /artifacts/1.json
  def show
    @artifact = Artifact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artifact }
    end
  end

  # GET /artifacts/new
  # GET /artifacts/new.json
  def new
    @artifact = Artifact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artifact }
    end
  end

  # GET /artifacts/1/edit
  def edit
    @artifact = Artifact.find(params[:id])
  end

  # POST /artifacts
  # POST /artifacts.json
  def create
    @artifact = current_user.artifacts.new(params[:artifact])

    respond_to do |format|
      if @artifact.save
        format.html { redirect_to new_image_path(artifact_id: @artifact.id) }
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

  def by_county
    @artifacts = Artifact.find_all_by_county(params[:county])
  end
end
