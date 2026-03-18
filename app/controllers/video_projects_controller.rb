class VideoProjectsController < ApplicationController
  before_action :set_video_project, only: %i[ show edit update destroy ]

  # GET /video_projects or /video_projects.json
  def index
    @video_projects = VideoProject.all
  end

  # GET /video_projects/1 or /video_projects/1.json
  def show
  end

  # GET /video_projects/new
  def new
    @video_project = VideoProject.new
  end

  # GET /video_projects/1/edit
  def edit
  end

  # POST /video_projects or /video_projects.json
  def create
    @video_project = VideoProject.new(video_project_params)

    respond_to do |format|
      if @video_project.save
        format.html { redirect_to @video_project, notice: "Video project was successfully created." }
        format.json { render :show, status: :created, location: @video_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_projects/1 or /video_projects/1.json
  def update
    respond_to do |format|
      if @video_project.update(video_project_params)
        format.html { redirect_to @video_project, notice: "Video project was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @video_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_projects/1 or /video_projects/1.json
  def destroy
    @video_project.destroy!

    respond_to do |format|
      format.html { redirect_to video_projects_path, notice: "Video project was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_project
      @video_project = VideoProject.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def video_project_params
      params.expect(video_project: [ :title, :status, :target_date, :category ])
    end
end
