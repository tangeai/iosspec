Pod::Spec.new do |s|
  s.name = "TGCommonBaseModule"
  s.version = "0.0.6"
  s.summary = "A short description of TGCommonBaseModule."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"liubin"=>"liubin361163@163.com"}
  s.homepage = "https://gitee.com/tange-ai/tgopencommonbase.git"
  s.description = "TODO: Add long description of the pod here."
  s.xcconfig = {"ENABLE_BITCODE"=>"NO"}
  s.source           = { :git => 'https://gitee.com/tange-ai/tgopencommonbase.git', :tag => s.version.to_s }

  s.ios.deployment_target    = '11.0'
  s.ios.vendored_frameworks   = 'ios/TGCommonBaseModule.framework'
  s.frameworks = 'CoreLocation','Photos'
  s.dependency 'TGBaseModule/Relay'
  s.dependency 'TGBaseModule/Ping'
  s.dependency 'TGBaseModule/JSONKit'
  s.dependency 'TGBaseModule/SSKeyChain'
  s.dependency 'MBProgressHUD'
  s.dependency 'SVGKit','3.3.0'
  s.dependency 'CocoaLumberjack','3.8.0'
  #s.dependency 'SVGKit'
  s.dependency 'AFNetworking'
end
