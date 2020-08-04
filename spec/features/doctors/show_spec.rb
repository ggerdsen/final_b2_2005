require 'rails_helper'

RSpec.describe 'Doctors Show Page' do
  before :each do
    @sloan_hostpital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    @grey_doctor = Doctor.create(name: "Meredith Grey", specialty: "general surgery", education: "Harvard University", hospital_id: @sloan_hostpital.id)
    @denny_patient = Patient.create(name: "Denny Duquette", age: 39, doctor_id: @grey_doctor.id)
    @rebecca_patient = Patient.create(name: "Rebecca Pope", age: 32, doctor_id: @grey_doctor.id)
  end
  
  it "As a visitor I see all doctor information" do

    visit "/doctors/#{@grey_doctor.id}"
    
    expect(page).to have_content("Doctor: #{@grey_doctor.name}")
    expect(page).to have_content("Specialty: #{@grey_doctor.specialty}")
    expect(page).to have_content("Education: #{@grey_doctor.education}")
    expect(page).to have_content("Hospital: #{@grey_doctor.hospital.name}")
    expect(page).to have_content(@denny_patient.name)
    expect(page).to have_content(@rebecca_patient.name)
  end
end
