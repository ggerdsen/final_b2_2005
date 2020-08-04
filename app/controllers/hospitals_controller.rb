class HospitalsController <ApplicationController

  def index
    
  end
  
  def show
    @hospital = Hospital.find(params[:hospital_id])
  end
  
end