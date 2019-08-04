json.extract! user_material, :id, :user_id, :material_id, :created_at, :updated_at
json.url user_material_url(user_material, format: :json)
