class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :gender, :birthday, :address, :town, :country, :relationship_status

  validates_uniqueness_of :username
  validates_presence_of :username, :first_name, :last_name, :gender, :birthday
end
