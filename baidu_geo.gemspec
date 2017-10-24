# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'baidu_geo/version'

Gem::Specification.new do |spec|
  spec.name          = "baidu_geo"
  spec.version       = BaiduGeo::VERSION
  spec.authors       = ["luolin"]
  spec.email         = ["luolinae86@gmail.com"]

  spec.summary       = %q{基于Baidu Geocoding API 提供从地址到经纬度坐标或者从经纬度坐标到地址的转换服务}
  spec.description   = %q{基于Baidu Geocoding API 提供从地址到经纬度坐标或者从经纬度坐标到地址的转换服务}
  spec.homepage      = "https://github.com/luolinae86/baidu_geo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rest-client","~> 2.0"
  spec.add_development_dependency "json","~> 1.8"
end
