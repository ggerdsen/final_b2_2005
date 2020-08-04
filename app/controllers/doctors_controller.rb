class DoctorsController <ApplicationController

  def index
    
  end
  
  def show
    @doctor = Doctor.find(params[:doctor_id])
  end
  
  def destroy
    @patient = Patient.find(params[:patient_id])
    Patient.destroy(params[:patient_id])
    redirect_to "/doctors/#{@patient.doctor_id}"
  end
  
end