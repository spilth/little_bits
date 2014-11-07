require 'spec_helper'

module LittleBits
  describe CloudBit do
    describe '#output' do
      it 'POSTs an output request to the littleBits Cloud API' do
        stub_request(
            :post,
            'https://api-http.littlebitscloud.cc/devices/DEVICE_ID/output').
            with(
            :body => {
                'duration_ms' => '3000',
                'percent' => '100'
            },
            :headers => {
                'Accept'=>'application/vnd.littlebits.v2+json',
                'Accept-Encoding'=>'gzip, deflate',
                'Authorization'=>'Bearer ACCESS_TOKEN',
                'Content-Length'=>'28',
                'Content-Type'=>'application/x-www-form-urlencoded',
                'User-Agent'=>'Ruby'
            }).
            to_return(:status => 200, :body => 'OK', :headers => {})

        client = LittleBits::CloudBit.new('ACCESS_TOKEN', 'DEVICE_ID')
        result = client.output(100, 3000)

        expect(result).to be_truthy
      end
    end
  end
end
