class DelaysController < ApplicationController
  before_action :find_delay, only: [:show, :edit, :update, :destroy]


  def index
    @delays = Delay.all
  end

  def show

  end

  def new
    @delay = Delay.new
  end

  def create
    @delay = Delay.create(delay_params)
    if @delay.valid?
      redirect_to @delay
    else
      flash[:error] = @delay.errors.full_messages
      redirect_to new_delay_path
    end
  end

  def edit

  end

  def update
    @delay.update(delay_params)
    if @delay.valid?
      redirect_to @delay
    else
      flash[:error] = @delay.errors.full_messages
      redirect_to new_delay_path
    end
  end

  def destroy
    @delay.destroy
    redirect_to delays_path
  end


private

def find_delay
  @delay = Delay.find_by(id: params[:id])
end

def delay_params
  params.require(:delay).permit(:name, :description, :subway_id)
end

end #end of controller
