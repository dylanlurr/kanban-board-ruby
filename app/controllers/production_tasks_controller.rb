class ProductionTasksController < ApplicationController
  before_action :set_production_task, only: %i[ show edit update destroy ]

  # GET /production_tasks or /production_tasks.json
  def index
    @production_tasks = ProductionTask.all
  end

  # GET /production_tasks/1 or /production_tasks/1.json
  def show
  end

  # GET /production_tasks/new
  def new
    @production_task = ProductionTask.new
  end

  # GET /production_tasks/1/edit
  def edit
  end

  # POST /production_tasks or /production_tasks.json
  def create
    @production_task = ProductionTask.new(production_task_params)

    respond_to do |format|
      if @production_task.save
        format.html { redirect_to @production_task.video_project, notice: "Production task was successfully created." }
        format.json { render :show, status: :created, location: @production_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @production_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_tasks/1 or /production_tasks/1.json
  def update
    respond_to do |format|
      if @production_task.update(production_task_params)
        format.html { redirect_to @production_task.video_project, notice: "Production task was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @production_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @production_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_tasks/1 or /production_tasks/1.json
  def destroy
    @production_task.destroy!

    respond_to do |format|
      format.html { redirect_to production_tasks_path, notice: "Production task was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_task
      @production_task = ProductionTask.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def production_task_params
      params.expect(production_task: [ :description, :completed, :video_project_id ])
    end
end
