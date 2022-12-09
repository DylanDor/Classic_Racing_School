json.extract! user, :id, :show, :edit, :update, :destroy, :created_at, :updated_at
json.url user_url(user, format: :json)
