class Tenant < ApplicationRecord
  belongs_to :apartment
  has_many :packages, through: :requests
  has_many :requests
end
