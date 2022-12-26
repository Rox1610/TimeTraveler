class ErasController < ApplicationController
  before_action :set_era, only: %i[show update]

  def index
    @eras = Era.all
  end

  def show
  end

  def new
    @era = Era.new
  end

  def create
    @era = Era.new(era_params)
    @era.user = current_user

    if @era.save
      redirect_to era_path(@era)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @era.update(era_params)
    redirect_to era_path(@era)
  end

  private

  def set_era
    @era = Era.find(params[:id])
  end

  def era_params
    params.require(:era).permit(:title, :content, :price, :photo)
  end
end
