class User < ActiveRecord::Base
  has_secure_password
  validates :password, presence: true,
                    length: { minimum: 6 }
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, :uniqueness => {:case_sensitive => false}, confirmation: { case_sensitive: false }
  before_save :downcase_fields

  def downcase_fields
    self.email.downcase!
  end

 def self.authenticate_with_credentials(email, password)
 
  user = User.find_by(email: email.downcase)
  
    if user
      user.authenticate(password)
    else
      false
    end
  end
end
