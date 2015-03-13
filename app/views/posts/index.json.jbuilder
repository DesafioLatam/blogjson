json.array!(@posts) do |post|
  # json.extract! post, :id, :user_id, :title, :content, :is_published
  json.extract! post, :id, :user, :title, :content, :created_at
  json.url post_url(post, format: :json)
end
