class Package < ApplicationRecord
  has_one :request
  has_one :requester, through: :request, foreign_key: :requester_id
  has_one :acceptor, through: :request, foreign_key: :acceptor_id
end
