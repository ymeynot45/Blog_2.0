class Tag < ActiveRecord::Base
  has_many :unicorns
  has_many :posts, :through => :unicorns
end
