class SubwaysController < ApplicationController
  before_action :find_subway, only: [:show, :edit, :update, :destroy]


  def index
    @subways = Subway.all
  end

  def show

  end

  def new
    @subway = Subway.new
  end

  def create
    @subway = Subway.create(subway_params)
    if @subway.valid?
      redirect_to @subway
    else
      flash[:error] = @subway.errors.full_messages
      redirect_to new_subway_path
    end
  end

  def edit

  end

  def update
    @subway.update(subway_params)
    if @subway.valid?
      redirect_to @subway
    else
      flash[:error] = @subway.errors.full_messages
      redirect_to new_subway_path
    end
  end

  def destroy
    @subway.destroy
    redirect_to subways_path
  end


private

def find_subway
  @subway = Subway.find_by(id: params[:id])
end

def subway_params
  params.require(:subway).permit(:letter, :color)
end
end
