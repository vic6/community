class Request < ApplicationRecord
  belongs_to :package
  belongs_to :tenant
end
