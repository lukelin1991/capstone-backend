class User < ApplicationRecord
    validates_presence_of :email, :password
    validates_uniqueness_of :email, :username

    has_many :companyusers, dependent: :destroy
    has_many :applications, dependent: :destroy
    has_many :jobs, through: :applications
    has_many :companies, through: :companyusers

    has_secure_password
end
