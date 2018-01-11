Pod::Spec.new do |s|
  s.name             = 'KBCommonKit'
  s.version          = '1.0.0'
  s.summary          = 'A short'

                      

  s.homepage         = 'https://github.com/niuniuzuiniu/KBCommonKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuweiqing' => 'liuweiqing@lianjia.com' }
  s.source           = { :git => 'https://github.com/niuniuzuiniu/KBCommonKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  # s.source_files = 'KBCommonKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KBCommonKit' => ['KBCommonKit/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'

  s.subspec 'source' do |ss|
  ss.source_files = 'KBCommonKit/Classes/libextobjc/**/*'
  end
  
  s.subspec 'lib' do |ss|
  ss.vendored_libraries = 'Example/KBCommon/libKBCommon.a'
  ss.source_files  = 'KBCommonKit/Classes/libextobjc/*.{h}'
  end

end
