require 'spec_helper'
require 'rails_helper'

describe Package do
  describe 'associations' do
    before(:each) do
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

    it 'returns owner of package' do
      expect(@package1.requester).to eq @tenant1
    end

    it 'returns the package request' do
      expect(@package1.request).to eq @request1
      expect(@package1.request).to eq @request
    end

    it 'returns tenant who accepted the request' do
      expect(@package1.acceptor).to eq @tenant2
    end
  end
end
