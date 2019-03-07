class ProgressEntriesController < ApplicationController
  before_action :get_goal, only: %i[new edit update destroy]
  before_action :set_entry, only: %i[edit update destroy]

  def show; end

  def new
    @entry = ProgressEntry.new
  end

  def edit; end

  def create
    @entry = ProgressEntry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to goals_path, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @progress_entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @goal.update(goal_params)
  #       format.html { redirect_to goals_path, notice: 'Goal was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @goal }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @goal.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @entry.destroy
  #   respond_to do |format|
  #     format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def get_goal
    @goal = Goal.find(params[:goal_id])
  end

  def set_entry
    @entry = ProgressEntry.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def entry_params
    params.require(:progress_entry).permit(:goal_id, :amount, :entry_date)
  end
end
