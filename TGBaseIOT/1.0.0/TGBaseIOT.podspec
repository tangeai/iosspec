Pod::Spec.new do |s|
  s.name = "TGBaseIOT"
  s.version = "1.0.0"
  s.summary = "A short description of TGCommonBaseModule."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"liubin"=>"liubin361163@163.com"}
  s.homepage = "https://gitee.com/tange-ai/tgopenbaseiot.git"
  s.description = "TODO: Add long description of the pod here."
  s.xcconfig = {"ENABLE_BITCODE"=>"NO"}
  s.source           = { :git => 'https://gitee.com/tange-ai/tgopenbaseiot.git', :tag => s.version.to_s }
#  s.compiler_flags ='-DLINUX','-D__MAC_OS__'
  s.ios.deployment_target    = '11.0'
  s.ios.vendored_frameworks   = 'ios/TGBaseIOT.framework'
  s.frameworks = 'CoreGraphics', 'Security','UIKit','WebKit'
  s.libraries = 'c++','sqlite3.0','z','iconv'
  s.dependency 'TGCommonBaseModule'
  s.dependency 'TGBaseModule/Relay'
  s.dependency 'TGBaseModule/JSONKit'
  s.dependency 'TGBaseModule/Ping'
  s.dependency 'TGBaseModule/ShangYun'
  s.dependency 'TGBaseModule/DAAudioVideo'
  s.dependency 'ZXingObjC'
  s.dependency 'Masonry'
end
