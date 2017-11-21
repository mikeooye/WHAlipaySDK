Pod::Spec.new do |s|
  s.name = "AlipaySDK"
  s.version = "15.5.0"
  s.summary = "支付宝 SDK."
  s.homepage = "http://open.alipay.com/"
  s.license = { 
    :type => "Copyright", 
    :text => "支付宝(中国)网络技术有限公司 版权所有." 
  }

  s.author = { 
    "Alipay" => "https://www.alipay.com/" 
  }

  s.platform = :ios, "7.0"

  s.source = { 
    :git => "https://git.coding.net/ihojin/AlipaySDK.git",
    :tag => s.version.to_s 
  }

  s.resources = "AlipaySDK.bundle"
  s.frameworks = [
    'SystemConfiguration', 
    'UIKit', 
    'Foundation',
    'CoreTelephony',
    'QuartzCore',
    'CoreGraphics',
    'CoreText',
    'CFNetwork',
    'CoreMotion'
  ]

  s.libraries = [
    'z',
    'c++'
  ]

  s.vendored_frameworks = 'AlipaySDK.framework'
  # s.public_header_files = 'AlipaySDK.framework/Headers/**/*.h'
  # s.source_files = 'AlipaySDK.framework/Headers/**/*.h'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}"'}
end
