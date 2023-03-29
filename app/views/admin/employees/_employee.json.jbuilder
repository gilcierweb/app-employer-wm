json.extract! employee, :id, :name, :admission_date, :cpf, :email, :birth_date, :location, :function, :wallet_working, :gross_salary, :active, :company_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
