class PositionsController < ApplicationController

  def index
   @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to positions_path
    else
      @errors = @position.errors.full_messages
    end
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
    @position = Position.find(params[:id])
    if @position.update_attributes(position_params)
      redirect_to positions_path
    end
  end

  def destroy
    @position = Position.find(params[:id])
    if @position.destroy
      redirect_to positions_path
    end
  end

  private

  def position_params
    params.require(:position).permit(:title, :description)
  end
end
