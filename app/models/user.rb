class User < ApplicationRecord
     has_secure_password

     validates :username, presence: true, uniqueness: true, on: :create
     validates :email, presence: true, uniqueness: true, on: :create
     validates :password, presence: true, on: :create

     has_many :project_users
     has_many :clients
     has_many :projects, :through => :project_users

end
