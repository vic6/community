require 'spec_helper'
require 'rails_helper'

describe Tenant do
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

    it 'returns name of apartment' do
      expect(@tenant1.apartment.name).to eq 'Marcy Projects'
    end
  end
end
