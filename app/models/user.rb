class User < ApplicationRecord

  has_secure_password
  attr_accessor :name,:mail, :password_digest, :password, :password_confirmation


  def password=(val)
    if val.present?
      hashed_password = BCrypt::Password.create(val)
    end
    @password = val
  end

  def authenticate(name,password)
    user = find_by(name: name)
    if user && user.hashed_password.present?&&
      BCrypt::Password.new(user.hashed_password) == password
      user
    else
      nil
    end
  end

end
