require 'rails_helper'

RSpec.describe 'Patient Index Page' do
  before :each do
    @sloan_hostpital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    @grey_doctor = Doctor.create(name: "Meredith Grey", specialty: "general surgery", education: "Harvard University", hospital_id: @sloan_hostpital.id)
    @denny_patient = Patient.create(name: "Denny Duquette", age: 39, doctor_id: @grey_doctor.id)
    @katie_patient = Patient.create(name: "Katie Bryce", age: 24, doctor_id: @grey_doctor.id)
    @rebecca_patient = Patient.create(name: "Rebecca Pope", age: 32, doctor_id: @grey_doctor.id)
  end
  
  it "As a visitor I see the names of all patients listed from oldest to youngest" do
    
    visit "/patients"
    
    expect(page).to have_content(@denny_patient.name)
    expect(page).to have_content(@denny_patient.age)
    expect(page).to have_content(@rebecca_patient.name)
    expect(page).to have_content(@rebecca_patient.age)
    expect(page).to have_content(@katie_patient.name)
    expect(page).to have_content(@katie_patient.age)
    
  end
  
end
