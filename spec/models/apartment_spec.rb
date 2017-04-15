require 'spec_helper'
require 'rails_helper'

describe Apartment do
  describe 'associations' do
    before(:each) do
      @apartment = Apartment.create!(name: 'Marcy Projects')
      @tenant1 = Tenant.create!(first_name: 'Bob',
                                last_name: 'Sponge',
                                apartment_id: 1,
                                apt_number: 4)
      @tenant2 = Tenant.create!(first_name: 'Gary',
                                last_name: 'Snail',
                                apartment_id: 1,
                                apt_number: 87)
    end

    it 'returns all tenants in the apartment' do
      expect(@apartment.tenants).to match_array [@tenant1, @tenant2]
    end
  end
end
