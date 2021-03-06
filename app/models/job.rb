class Job < ApplicationRecord
  validates_presence_of :title, :location, :salary, :description, :company_id

  belongs_to :company
  has_many :applications, dependent: :destroy
  has_many :users, through: :applications
end
