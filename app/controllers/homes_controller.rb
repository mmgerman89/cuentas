class HomesController < ApplicationController
  def new
    @home = Home.new()
  end

  def create
    @home = Home.new(home_params)
    @home.user_id = current_user.id
    if @home.save
      flash[:success] = "Casa añadida con éxito"
      redirect_to homes_path
    else
      flash[:danger] = "Error al añadir casa"
      render 'new'
    end
  end

  def index
    @homes = current_user.homes
  end

  def show
    @home = Home.find(params[:id])
  end

  private
    def home_params
      params.require(:home).permit(:name, :address)
    end
end
