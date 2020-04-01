class User < ApplicationRecord
    validates_presence_of :email, :password
    validates_uniqueness_of :email, :username

    has_many :companyuser
    has_many :applications
    has_many :jobs through: :applications
    has_many :companies through: :companyuser

    has_secure_password
end
