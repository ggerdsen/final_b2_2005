require 'rails_helper'

RSpec.describe 'Doctors Show Page' do
  before :each do
    @grey_doctor = Doctor.create(name: "Meredith Grey", specialty: "general surgery", education: "Harvard University")
  end
  
  it "As a visitor I see all doctor information" do

    visit "/doctors/#{@grey_doctor.id}"
    
    expect(page).to have_content(@grey_doctor.name)
    expect(page).to have_content(@grey_doctor.specialty)
    expect(page).to have_content(@grey_doctor.education)

  end
end
  # As a visitor
  # When I visit a doctor's show page
  # I see all of that doctor's information including:
  #  - name
  #  - specialty
  #  - university where they got their doctorate
  # And I see the name of the hospital where this doctor works
  # And I see the names of all of the patients this doctor has