#
#  Be sure to run `pod spec lint MYLCommonUI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "MYLCommonUI"
  s.version      = "0.0.11"
  s.summary      = "MYLCommonUI"

  s.description  = <<-DESC
  MYLCommonUI 沐雨立的UI组件
                   DESC

  s.homepage     = "https://github.com/MuYuLi/MYLCommonUI"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { '沐雨立' => 'zhyl1881@163.com' }

  s.source       = { :git => 'https://github.com/MuYuLi/MYLCommonUI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MYLCommonUI/*.{h,m,c}'

  s.public_header_files = 'MYLCommonUI/*.h'

  # s.resources = "MYLCommonUI/Assets/**/*.{png,plist,xib,data,xcassets}"


  s.subspec 'Utils' do |ss|
      ss.source_files = 'MYLCommonUI/Utils/*'
      ss.public_header_files = 'MYLCommonUI/Utils/*.h'
  end
  

  s.subspec 'Components' do |ss|
      ss.source_files = 'MYLCommonUI/Components/**/*'
      ss.dependency 'MYLCommonUI/Utils'
  end


  s.frameworks = 'UIKit','Foundation','CoreLocation'


  # s.dependency 'AIFCommonUI'
  # s.dependency 'MBProgressHUD'




  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
