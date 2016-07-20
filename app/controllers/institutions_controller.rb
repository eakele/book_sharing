class InstitutionsController < ApplicationController
  before_filter :authenticate_user!
   def new
    @institution = Institution.new
   end

   def create
          @institution = Institution.new(institution_params)
         if @institution.save
             flash[:success] = 'Institution was successfully added.'
            redirect_to '/'
          else
            flash[:danger] = 'There was a problem creating the Institution.'
            render :new
          end
    end

    def institution_params
       params.require(:institution).permit(:cart_id, :institution_name, :institution_level, :institution_address)
    end
end
