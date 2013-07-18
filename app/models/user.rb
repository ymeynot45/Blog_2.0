class User < ActiveRecord::Base
  has_many :posts

  def password
    @password ||= BCypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
