class Post < ActiveRecord::Base
  has_many :unicorns
  has_many :tags, :through => :unicorns
end
