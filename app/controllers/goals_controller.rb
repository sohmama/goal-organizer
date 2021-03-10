class GoalsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def goal_params
    params.require(:goal).permit(:image, :title, :content, :deadline).merge(user_id: current_user.id)
  end
end
