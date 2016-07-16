class RegistrationsController < ApplicationController
 before_filter :authenticate_user!
 # new method which instanciate a new object when called
  def new
    @profile = Profile.new
  end
########################################
  def show
    @profile = Profile.where(:user_id => params[:id])
   end

########################################
  def create
        @profile = Profile.new(profile_params)
        @profile.user_id = current_user.id
        if @profile.save
          flash[:notice] = "Profile successfully created"
          redirect_to '/'
        else
          redirect_to '/login'
        end
   end
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address, :suburb, :state, :post_code, :type)
  end
end
