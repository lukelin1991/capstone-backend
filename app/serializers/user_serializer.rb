class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :companies, through: :companyusers
  has_many :companyusers
  has_many :applications

end
