json.extract! concertevent, :id, :name, :member, :datetime, :description, :created_at, :updated_at
json.url concertevent_url(concertevent, format: :json)
