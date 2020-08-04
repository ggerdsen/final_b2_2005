# README

Base repository for B2 Final Assessment.

This repository requires and has rbeen tested on Ruby v2.5.3 and is based on Rails 5.1.7.

RSpec, SimpleCov, and Shoulda-Matchers have been installed and set up.


## Setup
1. fork this repo
2. clone your fork
3. `git clone <paste_repo>`
4. `cd final_b2_2005`
5. `bundle install`

When you run `bundle exec rspec` you should have 0 tests.# BEM2 Final Technical Assessment Retake (Seattle Grace)
​
## Description
Seattle Grace is based off of Grey’s Anatomy, but you need NO knowledge of Grey’s Anatomy to complete this final.
Hospitals have many Doctors, Doctors work for just one hospital. Doctors can have many patients, and patients can have many doctors. You must test all relationships and any model methods made. You do not need to test validations on your models. Make sure to read all instructions and user stories before getting started.
​
## Database Information
* Hospitals have a name
* Doctors have a name, specialty, and university that they attended
* Patients have a name and age
 
​
## Instructions
​
* Work on this assessment independently. DO NOT discuss with anyone.
* Fork this repository
* Clone your fork
* Run `bundle install`
* Run `rake db:{drop,create}`
* Set up your db and then complete the user stories below
* Push your code to your fork once the time is up (not before!)
​​
​
```
User Story 1, Doctors Show Page
​
As a visitor
When I visit a doctor's show page
I see all of that doctor's information including:
 - name
 - specialty
 - university where they got their doctorate
And I see the name of the hospital where this doctor works
And I see the names of all of the patients this doctor has
```
​
​
```
User Story 2, Hospital Show Page
​
As a visitor
When I visit a hospital's show page
I see the hospital's name
And I see the number of doctors that work at this hospital
And I see a unique list of universities that this hospital's doctors attended
```
​
​
```
User Story 3, Remove a Patient from a Doctor
​
As a visitor
When I visit a Doctor's show page
Next to each patient's name, I see a button to remove that patient from that doctor's caseload
When I click that button for one patient
I'm brought back to the Doctor's show page
And I no longer see that patient's name listed
```
 
```
User Story 4, Patient Index Page
​
As a visitor
When I visit the patient index page
I see the names of all patients listed from oldest to youngest
```
​
​
## Data you can use:
Doctors:
Name: Meredith Grey
Specialty: General Surgery
Education: Harvard University
​
Name: Alex Karev
Specialty: Pediatric Surgery
Education: Johns Hopkins University
​
Name: Miranda Bailey
Specialty: General Surgery
Education: Stanford University
​
Name: Derek McDreamy Shepherd
Specialty: Attending Surgeon
Education: University of Pennsylvania
​
Hospitals:
Grey Sloan Memorial Hospital
​
Seaside Health & Wellness Center
​
Patients:
Name: Katie Bryce
Age: 24
​
Name: Denny Duquette
Age: 39
​
Name: Rebecca Pope
Age: 32
​
Name: Zola  Shepherd
Age: 2
