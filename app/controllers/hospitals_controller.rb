class HospitalsController <ApplicationController

  def index
    
  end
  
  def show
    @hospital = Hospital.find(params[:hospital_id])
    @doctors = Doctor.where("hospital_id = ?", @hospital.id)
    @universities = @doctors.select("education").uniq
  end
  
end