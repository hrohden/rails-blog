class Post < ApplicationRecord
  belongs_to :author
  has_many :comments
  validates :title, :headline, :content, presence: true
end
