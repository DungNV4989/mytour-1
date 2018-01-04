class UsersController < ApplicationController
	before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
	before_action :correct_user, only: [:edit, :update]
	before_action :admin_user, only: [:destroy]
	before_action :business_user, only: [:create_tour, :update_tour, :destroy_tour, :list_tour]

  def edit
  	@mytour = Tour.find_by_id params[:id]
  end

  def create_tour
  	@mytour = Tour.new  
  end

  def update_tour
  	if @mytour.update_attributes mytour_params
      flash[:success] = t :update
      redirect_to @mytour
    else
      render :edit
    end
  end

  def list_tour
  	@mytour = Tour.all
  end

  private def mytour_params
      params.require(:tours).permit :user_id, :tour_name, :destination, :number_day, :number_night, :pick_up, :price, :image, :rate_avg
    end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_path
    end
  end

  def correct_user
    @user = User.find params[:id]
    redirect_to root_path unless current_user?(@user)
  end

  def destroy
  	if User.find params[:id].destroy
  		flash[:success] = t :userdelete
		else Users.find params[:id].destroy
			flash[:success] = t :tourdelete
			redirect_to users_path
		end
  end

  def destroy_tour
  	if Tour.find params[:id].destroy
			flash[:success] = t :tourdelete
			redirect_to users_path
  end

  def admin_user
    redirect_to root_path unless current_user.admin?
  end

  def business_user
    redirect_to root_path unless current_user.business_user?
  end
end
