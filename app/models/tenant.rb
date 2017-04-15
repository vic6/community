class Tenant < ApplicationRecord
  belongs_to :apartment
  has_many :packages, through: :pending_packages
  has_many :pending_packages
end
