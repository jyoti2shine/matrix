class HomesController < ApplicationController
  def index
    @positions = Position.all
    @trainings = Training.all
  end

  def create

  end
end
