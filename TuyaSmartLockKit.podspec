Pod::Spec.new do |s|
  s.name = "TuyaSmartLockKit"
  s.version = "1.0.2"
  s.summary = "A short description of #{s.name}."
  s.license = {"type"=>"MIT"}
  s.authors = {"huangkai"=>"huangkai@tuya.com"}
  s.homepage = "https://tuya.com"
  s.source = { :http => "https://airtake-public-data-1254153901.cos.ap-shanghai.myqcloud.com/smart/app/package/sdk/ios/#{s.name}-#{s.version}.zip", :type => "zip" }

  s.static_framework = true

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'ios/*.framework'
  
  s.dependency 'TuyaSmartDeviceKit'
  s.dependency 'TuyaSmartBLEKit'

end
