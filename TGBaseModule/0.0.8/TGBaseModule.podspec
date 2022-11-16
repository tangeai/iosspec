#
# Be sure to run `pod lib lint TGBaseModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TGBaseModule'
  s.version          = '0.0.8'
  s.summary          = 'A short description of TGBaseModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/tange-ai/tgopenbase.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liubin' => 'liubin361163@163.com' }
  s.source           = { :git => 'https://gitee.com/tange-ai/tgopenbase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'TGBaseModule/Classes/*'
  s.xcconfig = {'ENABLE_BITCODE' => 'NO'}
  s.subspec 'Category' do |category|
    category.requires_arc            = false
    category.source_files = 'TGBaseModule/Classes/Category/**/*'
#    category.public_header_files = "Classes/**/*.h"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'JSONKit' do |jsonkitSpec|
    jsonkitSpec.requires_arc            = false
    jsonkitSpec.source_files = 'TGBaseModule/Classes/JSONKit/**/*'
#    jsonkitSpec.public_header_files = "Classes/**/*.{h,m}"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'Menu' do |menu|
    menu.requires_arc            = true
    menu.source_files = 'TGBaseModule/Classes/Menu/**/*'
    menu.dependency 'TGBaseModule/Category'
#    menu.public_header_files = "Classes/**/*.h"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'Base' do |base|
    base.requires_arc            = true
    base.source_files = 'TGBaseModule/Classes/Base/**/*'
#    base.public_header_files = "Classes/**/*.h"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'MJRefresh' do |refresh|
    refresh.requires_arc            = true
    refresh.source_files = 'TGBaseModule/Classes/MJRefresh/**/*'
    refresh.ios.dependency 'TGBaseModule/Base'
  end
  
  s.subspec 'Ping' do |ping|
    ping.requires_arc            = true
    ping.source_files = 'TGBaseModule/Classes/Ping/**/*'
    ping.dependency 'SVGKit'
    ping.dependency 'CocoaLumberjack'
#    ping.public_header_files = "Classes/**/*.{h,m}"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'SideRefresh' do |sideRefresh|
    sideRefresh.requires_arc            = true
    sideRefresh.source_files = 'TGBaseModule/Classes/SideRefresh/**/*'
#    sideRefresh.public_header_files = "Classes/**/*.{h,m}"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'SSKeyChain' do |keyChain|
    keyChain.requires_arc            = true
    keyChain.source_files = 'TGBaseModule/Classes/SSKeyChain/**/*'
#    keyChain.public_header_files = "Classes/**/*.h"  #工程需要暴露出来的头文件
  end
  
  s.subspec 'Relay' do |relay|
    relay.requires_arc            = true
    relay.source_files = 'TGBaseModule/Classes/Relay/**/*'
    #relay.public_header_files = "Classes/**/*.h"  #工程需要暴露出来的头文件
    relay.libraries = "c++"
    relay.compiler_flags = '-DLINUX','-D__MAC_OS__'
  end
  
  s.subspec 'iflyMSC' do |iflyMSC|
    iflyMSC.requires_arc            = true
    iflyMSC.ios.vendored_frameworks = 'TGBaseModule/Classes/iflyMSC/iflyMSC.framework'
    iflyMSC.libraries = 'z','c++'
    iflyMSC.frameworks = 'AVFoundation','SystemConfiguration','Foundation','CoreTelephony','AudioToolbox','UIKit','CoreLocation','Contacts','AddressBook','QuartzCore','CoreGraphics'
  end
  
  s.subspec 'OOS' do |oss|
    oss.requires_arc            = true
    oss.ios.vendored_frameworks = 'TGBaseModule/Classes/OOS/OOS.framework'
    oss.dependency 'QCloudCOSXML'
    oss.dependency 'QCloudCore'
  end
  
  s.subspec 'ShangYun' do |shangYun|
    shangYun.requires_arc            = true
    shangYun.source_files = 'TGBaseModule/Classes/ShangYun/**/*.h'
    shangYun.ios.vendored_library = 'TGBaseModule/Classes/ShangYun/lib/libPPCS_API.a'
    shangYun.compiler_flags = '-DLINUX'
    shangYun.libraries = "c++",'z'
  end
  
#  s.subspec 'Socket' do |socket|
#    socket.requires_arc            = true
#    socket.source_files = 'TGBaseModule/Classes/Socket/**/*.h'
#    socket.ios.vendored_library = 'TGBaseModule/Classes/Socket/**/*.a'
#  end
  
  s.subspec 'DAAudioVideo' do |daAudioVideo|
    daAudioVideo.requires_arc            = true
#    daAudioVideo.source_files = 'TGBaseModule/Classes/DAAudioVideo/**/*'
    daAudioVideo.ios.vendored_frameworks = 'TGBaseModule/Classes/DAAudioVideo/DAAudioVideo.framework'
    daAudioVideo.libraries = 'iconv'
  end
  
#  s.subspec 'WeChat' do |weChat|
#    weChat.requires_arc            = true
#    weChat.source_files = 'TGBaseModule/Classes/WeChat/**/*.h'
#    weChat.vendored_library = 'TGBaseModule/Classes/WeChat/**/*.a'
#    weChat.frameworks = 'WebKit','Security','CoreGraphics'
#    weChat.compiler_flags = '-ObjC -all_load'
#  end
#
  
  
  s.resource_bundles = {
    'TGBaseModule' => ['TGBaseModule/Assets/**/*']
  }
  
  #valid_archs = ['armv7s', 'arm64', 'x86_64', 'arm64e']
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,'DEVELOPMENT_TEAM' => 'UAL776976T'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64','DEVELOPMENT_TEAM' => 'UAL776976T' }
  
#  s.pod_target_xcconfig = {'EXCLUDED_AR/Users/liubin/Desktop/Old_Homebrew/2022-06-09 16:20:27/opt/homebrew/homebrew/Library/Homebrew/vendor/bundle/ruby/2.6.0/gems/rack-2.2.3.1/lib/rack/builder.rbCHS' => 'armv7'}
#  s.user_target_xcconfig = { 'EXCLUDED_ARCHS' => 'armv7' }
 # valid_archs = ['arm64', 'arm64e']
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
