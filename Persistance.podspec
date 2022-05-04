Pod::Spec.new do |spec|
  spec.name         = 'Persistance'
  spec.version      = '1.0.0'
  spec.summary      = 'Test'
  spec.source       = { :git => 'https://github.com/dianaafanador3/Persistance.git', :tag => 'v1.0.0' }
  spec.source_files = 'Persistance/*.swift'
  spec.dependency 'RealmSwift'
end
