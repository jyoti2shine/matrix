class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to trainings_path
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update_attributes(training_params)
      redirect_to trainings_path
    end
  end

  def destroy
    @training = Training.find(params[:id])
    if @training.destroy
      redirect_to trainings_path
    end
  end

  private

  def training_params
    params.require(:training).permit(:name,:certification,:number_of_day)
  end
end
