require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
  URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
  def initialize(url)
    @url = url
  end 
  
  def get_response_body
    uri = URI.parse(@url)
    variable = Net::HTTP.get_response(uri)
    variable.body
  end
  
  def parse_json
     JSON.parse(get_response_body)
  end   
end   
