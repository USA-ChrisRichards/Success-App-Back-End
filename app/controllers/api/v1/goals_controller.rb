class Api::V1::GoalsController < ApplicationController
    before_action :set_goal, only: [:show,:update,:destroy]

  def index
    goals = Goal.all
    # goals = Goal.where("board_id = ?", params[:board_id])
    render json: goals, status: 200
  end

  def create
    goal = Goal.create(goal_params)
    render json: goal, status: 201
  end

  def update
    @goal.update(goal_params)
    render json: @goal, status: 200
  end

  def destroy
    goalId = @goal.id
    @goal.destroy
    render json: {message:"goal Deleted!", goalId:goalId}
  end

  def show
    render json: @goal, status: 200
  end

  private
  def goal_params
    params.require(:goal).permit(:title, :content, :complete, :board_id)
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end
end




