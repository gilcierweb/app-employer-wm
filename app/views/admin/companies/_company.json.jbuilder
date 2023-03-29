json.extract! company, :id, :name, :fantasy_name, :cnpj, :owner_name, :location, :site_url, :email, :description, :birth_date, :logo, :active, :created_at, :updated_at
json.url company_url(company, format: :json)
