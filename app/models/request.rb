class Request < ApplicationRecord
  belongs_to :package
  belongs_to :requester, class_name: 'Tenant', foreign_key: :requester_id
  belongs_to :acceptor, class_name: 'Tenant', foreign_key: :acceptor_id
end
