json.extract! post, :id, :user_id, :item_id, :title, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
