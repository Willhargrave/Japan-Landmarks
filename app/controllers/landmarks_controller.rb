class LandmarksController < ApplicationController
  def new
    @landmark = Landmark.new
  end

  def show
    @landmark = Landmark.find(params[:id])
  end

def all
  @landmarks = Landmark.all
end
  def create
    @landmark = Landmark.new(landmark_params)
    if @landmark.save
      redirect_to landmark_path(@landmark)
    else
      render :new
    end
  end

  def destroy
    @landmark = Landmark.find(params[:id])
    if @landmark.destroy
      redirect_to landmark_path(@landmark)
    else
      render :show, status: :unprocessible_entity
    end
  end

  def edit
    @landmark = Landmark.find(params[:id])
  end

  def update
    @landmark = Landmark.find(params[:id])
    if @landmark.update(landmark_params)
      redirect_to landmark_path(@landmark)
    else
      render :edit
    end
  end

  private

  def landmark_params
    params.require(:landmark).permit(:name, :comment, :address)
  end
end
