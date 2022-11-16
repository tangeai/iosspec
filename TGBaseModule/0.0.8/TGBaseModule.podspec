Pod::Spec.new do |s|
  s.name = "TGBaseModule"
  s.version = "0.0.8"
  s.summary = "A short description of TGBaseModule."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"liubin"=>"liubin361163@163.com"}
  s.homepage = "https://gitee.com/tange-ai/tgbasemodule.git"
  s.description = "TODO: Add long description of the pod here."
  s.xcconfig = {"ENABLE_BITCODE"=>"NO"}

  s.ios.deployment_target    = '11.0'
  s.ios.vendored_framework   = 'ios/TGBaseModule.framework'
end
