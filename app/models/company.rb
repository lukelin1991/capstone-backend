class Company < ApplicationRecord
    validates_presence_of :name

    has_many :companyusers
    has_many :jobs
    has_many :users through: :companyusers
end
