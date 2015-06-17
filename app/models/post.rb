class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates_uniqueness_of :url
end
