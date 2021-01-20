json.extract! comment, :id, :like, :dislike, :replies, :created_at, :updated_at
json.url comment_url(comment, format: :json)
