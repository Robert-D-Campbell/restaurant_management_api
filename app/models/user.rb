class User < ApplicationRecord
    has_secure_password
    
    enum employee_status: {
        active: 10,
        inactive: 20,
    }

end
