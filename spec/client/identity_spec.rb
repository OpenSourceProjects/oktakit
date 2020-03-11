require 'spec_helper'

describe Oktakit::Client::Identity do
  describe '#user_info' do
    it 'returns the list of claims' do
      VCR.use_cassette 'userinfo' do
        resp, = client.userinfo('token')
        expect(resp).not_to be_nil
      end
    end
  end
end
