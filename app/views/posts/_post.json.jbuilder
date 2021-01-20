json.extract! post, :id, :movie_id, :book_id, :user_id, :comment_id, :created_at, :updated_at
json.url post_url(post, format: :json)
