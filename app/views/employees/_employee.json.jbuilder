json.extract! employee, :id, :name, :job, :created_at, :updated_at
json.url employee_url(employee, format: :json)
