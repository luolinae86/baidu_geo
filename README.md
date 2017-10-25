# BaiduGeo

- 根据地址，查询该地址的经纬度信息
- 根据经纬度，查询该经纬度的详细地址信息，包含省、市、区街道信息

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu_geo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baidu_geo

## Usage

### 根据地址查询经纬度

> 特别声明!
> 如果你有百度地图开发者账号ak，在调用接口的时候请传入自己的ak
> 如果不传入ak信息,就默认用楼主个人开发者的ak，每天会有次数限制
> !!! 楼主的默认ak是为开发者提供查询方便,不能用于非法查询，否则由此引发的后果，由调用者自己负责

```ruby

#方法调用

BaiduGeo.address_to_geo(address,ak)

#调用例子
result = BaiduGeo.address_to_geo("四川大学")

lng = result[:lng]  #=>经度值
lat = result[:lat]  #=>纬度值

# result => {:lng=>104.08904497670915, :lat=>30.636985820461657, :result=>{:location=>{:lng=>104.08904497670915, :lat=>30.636985820461657}, :precise=>0, :confidence=>50, :level=>"UNKNOWN"}}
```

### 根据经纬度查询地址

```ruby
#方法调用
geo_to_address(lat,lng,ak=AK)

#调用例子

result = BaiduGeo.geo_to_address("30.636985820461657","104.08904497670915")

province = result[:province]  #=> 省
city     = result[:city]      #=> 市
district = result[:district]  #=> 区
street   = result[:street]    #=> 街道

#详细的结果参考result的值
# result => => {:province=>"四川省", :city=>"成都市", :district=>"武侯区", :street=>"共和路", :result=>{:location=>{:lng=>104.0890449767091, :lat=>30.636985699921198}, :formatted_address=>"四川省成都市武侯区共和路10号", :business=>"四川大学,科华北路,望江路", :addressComponent=>{:country=>"中国", :country_code=>0, :province=>"四川省", :city=>"成都市", :district=>"武侯区", :town=>"", :adcode=>"510107", :street=>"共和路", :street_number=>"10号", :direction=>"附近", :distance=>"14"}, :pois=>[{:addr=>"一环路南一段24号", :cp=>"", :direction=>"内", :distance=>"0", :name=>"四川大学望江校区", :poiType=>"教育培训", :point=>{:x=>104.08448552199151, :y=>30.630088356230324},...}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luolinae86/baidu_geo.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

