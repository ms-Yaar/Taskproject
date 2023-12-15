json.extract! mainuser, :id, :name, :email, :password, :mainuser_type, :created_at, :updated_at
json.url mainuser_url(mainuser, format: :json)
