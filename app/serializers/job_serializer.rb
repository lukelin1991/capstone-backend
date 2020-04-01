class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :salary, :description
  belongs_to :company

  has_many :applications
end
