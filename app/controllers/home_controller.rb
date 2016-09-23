class HomeController < ApplicationController
  def index
    @positions = Position.all
    @trainings = Training.all
  end
end
