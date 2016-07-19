class VolunteersController < ApplicationController
  before_filter :authenticate_user!

  # new method which instanciate a new object when called
   def new
     @volunteer = Volunteer.new
   end
 ########################################
   def show
     @volunteer = Volunteer.where(:user_id => params[:id])
    end

 ########################################
   def create
       @volunteer = Volunteer.new(volunteer_params)
       @volunteer.user_id = current_user.id
       if @volunteer.save
         flash[:notice] = "Volunteer successfully created"
         redirect_to '/'
       else
         flash[:danger] = 'There was a problem creating the Volunteer.'
         render :new
       end
    end
   def volunteer_params
     params.require(:volunteer).permit(:departure_date, :arrival_date, :destination_country, :destination_city, :destination_province, :message)
   end

end
