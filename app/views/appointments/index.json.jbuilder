json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :patient_id, :location
  json.url appointment_url(appointment, format: :json)
end
