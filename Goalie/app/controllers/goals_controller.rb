class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render :index
  end

  def show
    @goal = Goal.find(params[:id])
    render :show
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to goals_url
    else
      flash.now[:errors] = @goal.errors.full_messages
      render :new
    end
  end

  def complete_goal
    @goal = Goal.find(params[:id])
    @goal.completed = true
    @goal.save
    @goals = Goal.all
    render :index
  end

  def goal_params
    params.require(:goal).permit(:statement, :private_goal)
  end
end
