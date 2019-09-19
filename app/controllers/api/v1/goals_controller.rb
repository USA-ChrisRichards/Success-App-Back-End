class GoalsController < ApplicationController
    before_action :set_goal, only: [:show,:update,:destroy]

  def index
    goals = goal.all
    render json: goals, status: 200
  end

  def create
    goal = goal.create(goal_params)
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
    params.require(:goal).permit(:title, :content, :complete)
  end

  def set_goal
    @goal = goal.find(params[:id])
  end
end

end

end
