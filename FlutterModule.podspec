Pod::Spec.new do |s|
  s.name             = 'FlutterModule'
  s.version          = '0.0.1'
  s.summary          = 'A plugin to import previous database versions'
  s.author           = 'Diana'  
  s.homepage         = 'https://www.google.com'  
  s.description      = <<-DESC
A plugin to import previous database versions
                       DESC
  s.platform         = :ios, '17.0'
  s.source           = { :git => 'https://github.com/dianaafanador3/SubModulesPlayground.git', :branch => 'new' }
  s.source_files     = 'FlutterModule/**/*.swift'

  s.dependency 'Flutter'
  s.dependency 'RealmSwift'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
