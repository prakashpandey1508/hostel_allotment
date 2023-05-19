class HostelsController < ApplicationController
  before_action :authenticate_student!, only: [:index ,:edit, :update, :destroy]

  def index
    @hostel=Hostel.all
  end

  def new
    @hostel=Hostel.new
  end
  def create
    @hostel = Hostel.new(hostel_params)

    if @hostel.save
      flash[:notice] = "Hostel is created successfully"
      redirect_to @hostel
    else
      flash[:error] = "Error creating hostel"
      render 'new'
    end
  end
  def update 
    @hostel=Hostel.find_by(id:params[:id])
    if @hostel.update(hostel_params)
      redirect_to hostels_path ,notice:"hostel data updated successfully"
    else
      render 'new'
    end


  end

  def show
    
  end

  def edit
    @hostel=Hostel.find_by(id:params[:id])
  end
  private
  def hostel_params
    params.require(:hostel).permit(:name, :room)
  end
end
