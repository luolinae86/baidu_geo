require "baidu_geo/version"
require 'rest-client'
require 'json'

module BaiduGeo
  AK = "vSpq0zwhjlzDsK8IG5ox7nZNpvs1chjd"

  def self.address_to_geo(address,ak=AK)
    url = URI.encode("http://api.map.baidu.com/geocoder/v2/?address=#{address}&output=json&ak=#{ak}")
    result = JSON.parse(RestClient.get(url).body,symbolize_names: true)[:result]
    {lng: result[:location][:lng],lat: result[:location][:lat],result: result}
  end


  def self.geo_to_address(lat,lng,ak=AK)
    url = URI.encode("http://api.map.baidu.com/geocoder/v2/?location=#{lat},#{lng}&output=json&pois=1&ak=#{ak}")
    result = JSON.parse(RestClient.get(url).body, symbolize_names: true)[:result]
    addr= result[:addressComponent]
    {province: addr[:province],city: addr[:city],district: addr[:district],street: addr[:street],result: result}
  end

end
