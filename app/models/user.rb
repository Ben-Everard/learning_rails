class User < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :password, :password_confirmation

  validates :first_name, :last_name, :email_address, :password, :password_confirmation, :presence => true
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  validates :email_address, :uniqueness => true
  validates :password, :confirmation => true
end
				