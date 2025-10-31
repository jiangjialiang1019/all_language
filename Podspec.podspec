Pod::Spec.new do |s|
  s.name             = 'NetworkManager'
  s.version          = '1.0.0'
  s.summary          = 'A simple network layer for iOS applications.'
  s.description      = <<-DESC
  NetworkManager provides a clean and easy-to-use interface for making network requests,
  handling JSON parsing, and managing API endpoints in your iOS apps.
                       DESC

  s.homepage         = 'https://github.com/yourusername/NetworkManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/yourusername/NetworkManager.git', 
                         :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.source_files = 'NetworkManager/Classes/**/*'
  s.public_header_files = 'NetworkManager/Classes/**/*.h'
  
  s.frameworks = 'Foundation', 'UIKit'
  s.dependency 'AFNetworking', '~> 4.0'
end