class Package < ApplicationRecord
  has_one :pending_package
  has_one :requester, through: :pending_package, foreign_key: :requester_id
  has_one :acceptor, through: :pending_package, foreign_key: :acceptor_id
end
