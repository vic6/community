require 'spec_helper'
require 'rails_helper'

describe PendingPackage do
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

      @request = PendingPackage.create!(requester_id: @tenant1.id,
                                        acceptor_id: @tenant2.id,
                                        package_id: @package1.id)
    end
    it 'returns tenant making the request' do
      expect(@request.requester).to eq @tenant1
    end

    it 'returns tenant accepting the request' do
      expect(@request.acceptor).to eq @tenant2
    end

    it 'returns package in the request' do
      expect(@reqest.package).to eq package1
    end
  end
end
