class PatientsController <ApplicationController

  def index
    @patients = Patient.order("age DESC")
  end
  
end