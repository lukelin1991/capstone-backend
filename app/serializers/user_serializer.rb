class UserSerializer < ActiveModel::Serializer
  attributes :name, :email

  has_many :companyusers
  has_many :applications

end
