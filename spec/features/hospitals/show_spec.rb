require 'rails_helper'

RSpec.describe 'Hospital Show Page' do
  before :each do
    @sloan_hostpital = Hospital.create(name: "Grey Sloan Memorial Hospital")
    @grey_doctor = Doctor.create(name: "Meredith Grey", specialty: "general surgery", education: "Harvard University", hospital_id: @sloan_hostpital.id)
    @karev_doctor = Doctor.create(name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", hospital_id: @sloan_hostpital.id)
    @denny_patient = Patient.create(name: "Denny Duquette", age: 39, doctor_id: @grey_doctor.id)
    @rebecca_patient = Patient.create(name: "Rebecca Pope", age: 32, doctor_id: @grey_doctor.id)
  end
  
  it "As a visitor I see all hospital information" do

    visit "/hospitals/#{@sloan_hostpital.id}"
    
    expect(page).to have_content("Hospital Name: #{@sloan_hostpital.name}")
    expect(page).to have_content("Number of Doctors: 2")
    expect(page).to have_content("Doctor Universities: #{@grey_doctor.education}")
    expect(page).to have_content(@karev_doctor.education)
  end
  
end