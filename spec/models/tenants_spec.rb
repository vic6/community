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

      @package1 = Package.create!(name: 'Anchor Arms',
                                  tracking_number: 'BLAH345ZBLAH')
      @package2 = Package.create!(name: 'Box',
                                  tracking_number: 'BLAH345ZBLAH')

      @request1 = PendingPackage.create!(requester_id: @tenant1.id,
                                         acceptor_id: @tenant2.id,
                                         package_id: @package1.id)

      @request2 = PendingPackage.create!(requester_id: @tenant1.id,
                                         acceptor_id: @tenant2.id,
                                         package_id: @package2.id)
    end

    it 'returns name of apartment' do
      expect(@tenant1.apartment.name).to eq 'Marcy Projects'
    end

    it 'returns all tenants packages' do
      expect(@tenant1.packages).to match_array[@package1, @package2]
    end
  end
end
