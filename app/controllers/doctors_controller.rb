class DoctorsController <ApplicationController

  def index
    
  end
  
  def show
    @doctor = Doctor.find(params[:doctor_id])
  end
  
end