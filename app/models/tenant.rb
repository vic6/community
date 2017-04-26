class Tenant < ApplicationRecord
  belongs_to :apartment
  has_many :requests, foreign_key: :requester_id
  has_many :packages, through: :requests

  def full_name
    [first_name, last_name].join(' ')
  end
end
