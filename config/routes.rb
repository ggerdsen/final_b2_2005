Rails.application.routes.draw do
  get "/doctors/:doctor_id", to: "doctors#show"
  get "/hospitals/:hospital_id", to: "hospitals#show"
  delete "/doctors/:patient_id", to: "doctors#destroy"
  get "/patients", to: "patients#index"
end
