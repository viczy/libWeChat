Pod::Spec.new do |s|
  s.name                = "libWeibo"
  s.version             = "1.6"
  s.summary             = "The Official iOS SDK WeChat Open API."
  s.homepage            = "https://open.weixin.qq.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2014 WeChat. All rights reserved.
      LICENSE
  }
  s.platform            = :ios
  s.requires_arc        = true

  s.source              = { :git=> "https://github.com/viczy/libWeChat.git", :tag => s.version.to_s }
  s.source_files        = 'libWeChat/*.{h,m}' 
  s.public_header_files = 'libWeChat/*.h'
  s.vendored_libraries  = 'libWeChat/libWeChatSDK.a'
  s.frameworks          = 'SystemConfiguration'
  s.libraries           = 'sqlite3', 'z'
end
