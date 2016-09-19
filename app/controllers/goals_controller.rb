class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
  end

  def delete
    @goal = Goal.find(params[:id]).destroy

  def goals_params
    params_require(:body)
  end

end
