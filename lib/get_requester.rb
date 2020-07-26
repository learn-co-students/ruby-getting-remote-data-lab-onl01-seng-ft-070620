require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize (url)
        @url = url
    end

    def get_response_body 
        # ends a GET request to the URL passed in on initialization. This method should return the body of the response.
        
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        # use get_response_body to send a request, then return a Ruby Array or Hash 
        # made up of data converted from the response of that request
        
        response_hash = JSON.parse(self.get_response_body)
    end

end



