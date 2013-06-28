class Post < ActiveRecord::Base
  validates :content, :presence => true
  validates :title, :presence => true

  has_many :unicorns
  has_many :tags, :through => :unicorns
end
