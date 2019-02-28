# frozen_string_literal: true

# GoalProgressesController
class GoalProgressesController < ApplicationController
  before_action :set_goal_progress, only: %i[show edit update destroy]

  # GET /goal_progresses
  # GET /goal_progresses.json
  def index
    @goal_progresses = GoalProgress.all
  end

  # GET /goal_progresses/1
  # GET /goal_progresses/1.json
  def show; end

  # GET /goal_progresses/new
  def new
    @goal_progress = GoalProgress.new
  end

  # GET /goal_progresses/1/edit
  def edit; end

  # POST /goal_progresses
  # POST /goal_progresses.json
  def create
    @goal_progress = GoalProgress.new(goal_progress_params)

    respond_to do |format|
      if @goal_progress.save
        format.html { redirect_to @goal_progress, notice: 'Progress was successfully created.' }
        format.json { render :show, status: :created, location: @goal_progress }
      else
        format.html { render :new }
        format.json { render json: @goal_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_progresses/1
  # PATCH/PUT /goal_progresses/1.json
  def update
    respond_to do |format|
      if @goal_progress.update(goal_progress_params)
        format.html { redirect_to @goal_progress, notice: 'Progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_progress }
      else
        format.html { render :edit }
        format.json { render json: @goal_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_progresses/1
  # DELETE /goal_progresses/1.json
  def destroy
    @goal_progress.destroy
    respond_to do |format|
      format.html { redirect_to goal_progresses_url, notice: 'Progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_goal_progress
    @goal_progress = GoalProgress.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def goal_progress_params
    params.require(:goal_progress).permit(:goal_id, :achieve, :achieve_at)
  end
end
