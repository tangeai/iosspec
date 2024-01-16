Pod::Spec.new do |s|
  s.name = "TGADSDK"
  s.version = "1.0.0"
  s.summary = "\u63A2\u9E3D\u5E7F\u544ASDK"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Darren"=>"1540313817@qq.com"}
  s.homepage = "https://gitee.com/tange-ai/TGOpenADSDK.git"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :git => 'https://gitee.com/tange-ai/TGOpenADSDK.git', :tag => s.version.to_s }
  
  s.static_framework = true
  s.ios.deployment_target    = '12.0'
  s.source_files = 'ios/TGADSDK.framework/Versions/A/Headers/*.h'
  s.ios.vendored_framework   = 'ios/TGADSDK.framework'
  
  s.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
  s.dependency 'BeiZiSDK-iOS/BeiZi_KSSDK'
  # s.dependency 'BeiZiSDK-iOS/BeiZi_CSJSDK'
  s.dependency 'BeiZiSDK-iOS/BeiZi_BAIDUSDK'
  s.dependency 'BeiZiSDK-iOS/BeiZi_GDTSDK'
  s.dependency 'BeiZiSDK-iOS/BeiZi_GROMORE'
  
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC -all_load'
  }
  
  s.user_target_xcconfig = {
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
  }

end
