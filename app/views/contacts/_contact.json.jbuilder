json.extract! contact, :id, :email, :name, :phone, :body, :created_at, :updated_at
json.url contact_url(contact, format: :json)
