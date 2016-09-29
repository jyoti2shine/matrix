class HomesController < ApplicationController
  def index
    @positions = Position.all
    @trainings = Training.all
    # @selections = TrainingPosition.all
  end

  def create
    trainings_params.each do |data|
     data.to_h.each_pair do |content, index|
       Training.transaction do
         trainings = Training.find_by_name(content).positions
         trainings <<  Position.where(:id =>  (index - trainings.map(&:id).map(&:to_s)))
         Training.find_by_name(content).training_positions.where.not(:position_id => index.reject(&:empty?)).map(&:destroy) #Delete record from database after checkbox is unchecked
       end
     end
    end
    redirect_to root_path
  end

  private

  def trainings_params
    params.slice(:trainings).permit![:trainings]
  end
end