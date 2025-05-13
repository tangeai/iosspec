Pod::Spec.new do |s|
  s.name             = "TGFFmpegKit"
  s.version          = "6.1"
  s.summary          = "FFmpeg framework for iOS"
  s.description      = <<-DESC
                        Custom FFmpeg build with xcframework support.
                       DESC
  s.homepage         = "https://gitee.com/tange-ai/tgffmpegkit"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "liubin" => "liubin361163@163.com" }
  s.source           = {
    :git => "https://github.com/tangeai/tgffmpegkit.git",
    :tag => s.version.to_s,
    :submodules => true
  }

  s.ios.deployment_target = '12.1'
  s.static_framework      = true  # 如果是静态库
  s.xcconfig              = { 'ENABLE_BITCODE' => 'NO' }

  # 二进制框架
  s.ios.vendored_frameworks = 'ios/**/*.xcframework'

  # 系统依赖
  s.frameworks = 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'VideoToolbox'
  s.libraries  = 'bz2', 'c++', 'iconv', 'z'

  # 排除模拟器 arm64（M1 Mac 兼容性）
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
end
