class GoalsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :goal_find, except: [:index, :new, :create]

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
  end

  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to goal_path
    else 
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to root_path
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

  def goal_find
    @goal = Goal.find(params[:id])
  end
end
