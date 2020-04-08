class Company < ApplicationRecord
    validates_presence_of :name

    has_many :companyusers, dependent: :destroy
    has_many :jobs, dependent: :destroy
    has_many :users, through: :companyusers
end
