json.extract! post, :id, :name, :title, :url, :createdat, :content, :member_id, :created_at, :updated_at
json.url post_url(post, format: :json)
