json.extract! crime_list, :id, :title, :created_at, :updated_at
json.url crime_list_url(crime_list, format: :json)
