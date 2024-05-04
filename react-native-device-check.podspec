require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.homepage       = package["homepage"]
  s.license        = package["license"]
  s.author         = package['author']['name']

  s.platforms      = { :ios => "13.0" }
  s.source         = { :git => 'https://github.com/erickcrus/react-native-device-check.git', :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"
  
  s.dependency     'React-Core'
end
