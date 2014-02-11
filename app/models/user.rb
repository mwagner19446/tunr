class User < ActiveRecord::Base
   validates :email, uniqueness: true, presence: true
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :date_of_birth, presence: true
   validates :password, presence: true
end 