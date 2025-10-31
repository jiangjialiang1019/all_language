Pod::Spec.new do |s|
  s.name             = 'AwesomeUI'
  s.version          = '2.3.1'
  s.summary          = 'A collection of beautiful and customizable UI components for iOS.'
  s.description      = <<-DESC
  AwesomeUI provides a set of pre-built, customizable UI components including buttons, 
  cards, loaders, and transition animations to speed up your iOS development process.
                       DESC

  s.homepage         = 'https://github.com/yourcompany/AwesomeUI'
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.author           = { 'Dev Team' => 'dev@yourcompany.com' }
  s.source           = { :git => 'https://github.com/yourcompany/AwesomeUI.git', 
                         :tag => s.version.to_s }

  s.swift_versions = ['5.0', '5.1', '5.2']
  s.ios.deployment_target = '13.0'
  
  s.source_files = 'Sources/AwesomeUI/**/*.swift'
  
  # Resource files
  s.resource_bundles = {
    'AwesomeUI' => ['Sources/AwesomeUI/Resources/*.xcassets', 
                   'Sources/AwesomeUI/Resources/**/*.json',
                   'Sources/AwesomeUI/Resources/**/*.strings']
  }
  
  s.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore'
  s.dependency 'SnapKit', '~> 5.0'
  s.dependency 'Kingfisher', '~> 7.0'
end