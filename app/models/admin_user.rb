class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessible :email, :password, :password_confirmation, :role
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :mod]

  def admin?
    if self.role == "admin"
      return true
    else
      return false
    end
  end

  def mod?
    if self.role == "mod"
      return true
    else
      return false
    end
  end
end
