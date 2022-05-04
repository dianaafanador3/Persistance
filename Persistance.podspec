Pod::Spec.new do |spec|
  spec.name         = 'Persistance'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/dianaafanador3/Persistance'
  spec.authors      = { 'Diana Perez' => 'diana@gmail.com' }
  spec.version      = '1.0.0'
  spec.summary      = 'Test'
  spec.source       = { :git => 'https://github.com/dianaafanador3/Persistance.git', :tag => 'v1.0.0' }
  spec.source_files = 'Persistance/*.swift'
  spec.dependency 'RealmSwift', '10.25.2'
  spec.ios.deployment_target     = '9.0'
  spec.swift_versions = ['5.3']
end
