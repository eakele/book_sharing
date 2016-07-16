class RegistrationsController < ApplicationController
 before_filter :authenticate_user!
  def new
    @profile = Profile.new
  end

  def create
  profile = Profile.new(profile_params)
        profile.user_id = current_user.user_id
        profile.save
        if poprofilest.save
          flash[:notice] = "Profile successfully created"
          redirect_to '/'
        else
          redirect_to '/login'
        end
   end
  def post_params
    params.require(:profile).permit(:first_name, :last_name, :address, :suburb, :state, :post_code)
  end
end
