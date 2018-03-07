Pod::Spec.new do |s|
  s.name             = 'RxTheme'
  s.version          = '0.4.0'
  s.swift_version    = '4.0'
  s.summary          = 'iOS Theme management based on Rx'
  s.description      = <<-DESC
iOS Theme management based on RxSwift and RxCocoa, easy to use, easy to extend.
                       DESC

  s.homepage         = 'https://github.com/wddwycc/RxTheme'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wddwycc' => 'wddwyss@gmail.com' }
  s.source           = { :git => 'https://github.com/wddwycc/RxTheme.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wddwycc'

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'RxTheme/Classes/**/*'
  
  s.dependency 'RxSwift', '~> 4.0'
  s.dependency 'RxCocoa', '~> 4.0'
end
