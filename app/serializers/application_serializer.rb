class ApplicationSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :user
  belongs_to :job
end
