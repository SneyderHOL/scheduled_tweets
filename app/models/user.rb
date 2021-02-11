=begin
email:string
password_digest: string

has_secured_password add virtual attributes
password:string virtual
password_confirmation:string virtual
=end

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
end
