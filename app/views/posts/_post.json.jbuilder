json.extract! post, :id, :text, :like, :created_at, :updated_at
json.url post_url(post, format: :json)
