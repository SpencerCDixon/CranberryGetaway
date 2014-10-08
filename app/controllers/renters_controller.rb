class RentersController < ApplicationController
  before_filter :admin_authorize! 
  
  def index
    @renters = Renter.all
  end
  
  def show
    @renter = Renter.find(params[:id])
  end

  def new
    @renter = Renter.new
  end
  
  def create
    @renter = Renter.new(renter_params)

    if @renter.save
      redirect_to @renter
    else
      render 'new'
    end
  end
  private
  def renter_params
    params.require(:renter).permit(:first_name, :last_name, :email, :phone, :start_date, :end_date, :description)
  end
end
