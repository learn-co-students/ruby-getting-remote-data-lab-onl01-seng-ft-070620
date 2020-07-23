require 'json'
require 'open-uri'
require 'net/http'
require 'pry'

class GetRequester

    attr_reader :url

  def initialize(url)
    @url = url
  end #initialize

  def get_response_body
    Net::HTTP.get_response(URI.parse(self.url)).body
  end #get_repsonse_body

  def parse_json
    JSON.parse(self.get_response_body)
  end #parse_json

end #GetRequester
