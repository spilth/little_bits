require 'rest_client'

module LittleBits
  class CloudBit
    API_URL = 'https://api-http.littlebitscloud.cc'
    API_VERSION = 'v2'

    def initialize(access_token, device_id)
      @access_token = access_token
      @device_id = device_id
    end

    def output(percent = 100, duration_ms = 3000)
      RestClient.post "#{API_URL}/devices/#{device_id}/output",
                      {
                          :percent => percent,
                          :duration_ms => duration_ms
                      },
                      Accept: "application/vnd.littlebits.#{API_VERSION}+json",
                      Authorization: "Bearer #{access_token}"
    end

    private

    attr_reader :access_token, :device_id
  end
end
