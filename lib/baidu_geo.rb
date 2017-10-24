require "baidu_geo/version"
require 'rest-client'
require 'json'

module BaiduGeo
  def self.address_to_geo(address,ak)
    url = URI.encode("http://api.map.baidu.com/geocoder/v2/?address=#{address}&output=json&ak=#{ak}")
    result = RestClient.get(url)
    if 200 == result.code
      body = JSON.parse(result.body)
      #=> {"status"=>0, "result"=>{"location"=>{"lng"=>103.90207928818799, "lat"=>30.803134859560025}, "precise"=>0, "confidence"=>60, "level"=>"地产小区"}}
    end
  end


  def self.geo_to_address(lat,lng,ak)
  end

end
