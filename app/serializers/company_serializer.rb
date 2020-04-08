class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :companyusers
  has_many :jobs
end
