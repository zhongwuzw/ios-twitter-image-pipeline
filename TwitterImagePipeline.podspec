Pod::Spec.new do |s|
  s.name             = 'TwitterImagePipeline'
  s.version          = '2.12.2'
  s.compiler_flags   = '-DTIP_PROJECT_VERSION=2.12'
  s.summary          = 'Twitter Image Pipeline is a robust and performant image loading and caching framework for iOS'
  s.description      = 'Twitter created a framework for image loading/caching in order to fulfill the numerous needs of Twitter for iOS including being fast, safe, modular and versatile.'
  s.homepage         = 'https://github.com/twitter/ios-twitter-image-pipeline'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'Twitter' => 'opensource@twitter.com' }
  s.source           = { :git => 'https://github.com/twitter/ios-twitter-image-pipeline.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.subspec 'Default' do |sp|
    sp.source_files = 'TwitterImagePipeline/**/*'
    sp.public_header_files = 'TwitterImagePipeline/*.h'
  end

  s.subspec 'ObjC' do |sp|
    sp.source_files = 'TwitterImagePipeline/**/*.{h,m,c,cpp,mm}'
    sp.public_header_files = 'TwitterImagePipeline/*.h'
  end

  s.default_subspec = 'Default'
end
