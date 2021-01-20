class Post < ApplicationRecord
  belongs_to :movie
  belongs_to :book
  belongs_to :user
  belongs_to :comment
end
