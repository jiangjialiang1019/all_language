Pod::Spec.new do |s|
  s.name                  = 'CoreDataStack'
  s.version               = '3.2.0'
  s.summary               = 'A robust CoreData stack with sync capabilities'
  s.description           = <<-DESC
  CoreDataStack simplifies CoreData setup, provides background context management,
  and includes cloud sync functionality for iOS, macOS, and watchOS applications.
                       DESC

  s.homepage              = 'https://github.com/yourusername/CoreDataStack'
  s.license               = { :type => 'BSD-3-Clause', :file => 'LICENSE' }
  s.author                = { 'Tech Team' => 'tech@example.com' }
  s.source                = { :git => 'https://github.com/yourusername/CoreDataStack.git', 
                              :tag => s.version.to_s }

  # Multi-platform support
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.watchos.deployment_target = '5.0'
  s.tvos.deployment_target = '12.0'

  s.source_files          = 'CoreDataStack/Sources/**/*.{h,m,swift}'
  s.public_header_files   = 'CoreDataStack/Sources/Public/*.h'
  
  s.resource_bundles = {
    'CoreDataStack' => ['CoreDataStack/Resources/*.xcdatamodeld',
                       'CoreDataStack/Resources/*.momd']
  }

  s.frameworks            = 'Foundation', 'CoreData', 'CloudKit'
  
  # Subspecs for different functionalities
  s.subspec 'Core' do |core|
    core.source_files = 'CoreDataStack/Sources/Core/**/*.{h,m,swift}'
  end

  s.subspec 'Sync' do |sync|
    sync.source_files = 'CoreDataStack/Sources/Sync/**/*.{h,m,swift}'
    sync.dependency 'CoreDataStack/Core'
    sync.dependency 'ReachabilitySwift', '~> 5.0'
  end

  s.subspec 'UI' do |ui|
    ui.ios.source_files = 'CoreDataStack/Sources/UI/**/*.{h,m,swift}'
    ui.dependency 'CoreDataStack/Core'
  end

  s.default_subspecs = 'Core', 'Sync'
end