class User < ApplicationRecord
  has_secure_password

  enum employee_status: {
    active: 10,
    inactive: 20
  }

  validates :email,
            format: {
              with: /^(.+)@(.+)$/,
              message: 'Invalid Email'
            },
            uniqueness: { case_sensitive: false },
            length: { in: 4..128 }
  validates :firstName, length: { in: 2..128 }
  validates :lastName, length: { in: 2..128 }
  validates :phone, length: { in: 7..32 }
end
