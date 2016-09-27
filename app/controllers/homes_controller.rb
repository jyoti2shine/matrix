class HomesController < ApplicationController
  def index
    @positions = Position.all
    @trainings = Training.all
    @selections = TrainingPosition.all
  end

  def create
    trainings_params.each do |data|
     data.to_h.each_pair do |content, index|
       Training.find_by_name(content).positions <<  Position.where(:id => index)
     end
    end
    redirect_to root_path
  end

  def destroy
    @selection = TrainingPosition.find(params[:format])
    if  @selection.destroy
      redirect_to root_path
    end
  end

  private

  def trainings_params
    params.slice(:trainings).permit![:trainings]
  end
end