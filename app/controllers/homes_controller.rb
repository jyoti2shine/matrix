class HomesController < ApplicationController
  def index
    @positions = Position.all
    @trainings = Training.all
    # @selections = TrainingPosition.all
  end

  def create
    trainings_params.each do |data|
      data.to_h.each_pair do |content, index|
        Training.find_by_name(content).position_ids = index.reject(&:blank?)
      end
    end
    redirect_to root_path
  end

  private

  def trainings_params
    params.slice(:trainings).permit![:trainings]
  end
end