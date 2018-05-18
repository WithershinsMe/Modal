#
#  Be sure to run `pod spec lint GHModalStatusView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GHModalStatus"
  s.version      = "0.0.1"
  s.summary      = "A short description of GHModalStatusView."
  s.description  = "A test framework"
  s.homepage     = "http://EXAMPLE/GHModalStatusView"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "GK" => "gaojianfeng6909@gmail.com" }

  s.platform     = :ios
  s.platform     = :ios, "9.0"

  s.requires_arc = true
  s.default_subspec = 'Source'
  s.source           = { :path => '.'}

  s.subspec 'Source' do |source|
      source.source_files  = "GHModalStatus", "GHModalStatus/**/*.{h,m,c,mm,swift}"
  #   source.prefix_header_file = '/-Prefix.pch'
      source.resources = ['Release-universal/GHModalStatusBundle.bundle']
  end
  s.subspec 'Framework' do |framework|
      framework.vendored_frameworks = 'Release-universal/GHModalStatusSDK.framework'
      framework.resources    = ['Release-universal/GHModalStatusBundle.bundle']
  end
  # s.source       = { :git => "http://EXAMPLE/GHModalStatusView.git", :tag => "#{s.version}" }

  s.dependencies {'AFNetworking','SDWebImage/WebP'}

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "GHModlaStatus/*. {.png ,jpg,xib}"

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
