Pod::Spec.new do |s|
  s.name             = "UIFontLoader"
  s.summary          = "A short description of UIFontLoader."
  s.version          = "0.0.3"
  s.homepage         = "github.com/Strobocop/UIFontLoader"
  s.license          = 'MIT'
  s.author           = { "Brian Strobach" => "brian@appsaurus.io" }
  s.source           = {
    :git => "https://github.com/appsaurus/UIFontLoader.git",
    :tag => s.version.to_s
  }

  s.swift_version = '5.0'
  s.requires_arc = true

  s.ios.deployment_target = '9.0'
#  s.osx.deployment_target = '10.9'
#  s.tvos.deployment_target = '9.2'
#  s.watchos.deployment_target = "3.0"

  s.ios.source_files = 'Sources/{iOS,Shared}/**/*'
#  s.tvos.source_files = 'Sources/{iOS,tvOS,Shared}/**/*'
#  s.osx.source_files = 'Sources/{macOS,Shared}/**/*'
#  s.watchos.source_files = 'Sources/{watchOS,Shared}/**/*'

  s.ios.frameworks = 'UIKit', 'Foundation'
  # s.osx.frameworks = 'Cocoa', 'Foundation'

end
