class Post < ApplicationRecord
  belongs_to :author
  has_many :comments
  validates :title, presence: { message: 'Please inform the post title' }
  validates :headline, presence: { message: 'Headline cannot be blank' }
  validates :content, presence: { message: 'Content cannot be blank' }
end
