class CompanyuserSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :company
end
