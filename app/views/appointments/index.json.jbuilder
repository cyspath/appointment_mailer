json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :patient_id, :integer
  json.url appointment_url(appointment, format: :json)
end
