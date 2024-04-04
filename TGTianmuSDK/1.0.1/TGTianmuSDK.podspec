#
# Be sure to run `pod lib lint TianmuSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TGTianmuSDK'
  s.version          = '1.0.1'
  s.summary          = 'A short description of TianmuSDK.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/tange-ai/tgopen-tianmu-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xianggua@admoblie.top' => 'bale@admoblie.top' }
  s.source           = { :git => 'https://gitee.com/tange-ai/tgopen-tianmu-sdk', :tag => s.version.to_s }
  
  s.vendored_frameworks = 'TGTianmuSDK/Classes/*.xcframework'

  s.dependency 'ADSuyiKit', '~> 0.7.2.01301'
  s.dependency 'ADSuyiNetwork', '~> 0.2.1.0'
  s.dependency 'ADSuyiLocationManager', '~> 0.2.1.01301'

  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.requires_arc = true
  s.frameworks = "StoreKit","WebKit"
  s.libraries = ["resolv.9"]
  
  s.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC',
  }


end


