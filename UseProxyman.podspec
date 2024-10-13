Pod::Spec.new do |s|
  s.name         = 'UseProxyman'
  s.version      = '0.0.1'
  s.summary      = 'A Swift macro package for proxy configuration.'
  s.description  = <<-DESC
                    This CocoaPods package provides macros to check proxy configurations dynamically.
                    DESC
                    This package encrypt core data to model
                    DESC
  s.homepage              = 'https://github.com/ziminny/UseProxyman'
  s.license               = { :type => 'PASSEI-GROUP', :file => 'LICENSE' }
  s.authors               = { 'Vagner Oliveira' => 'ziminny@gmail.com' }
  s.source                = { :git => 'https://github.com/ziminny/UseProxyman.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.6'
  s.osx.deployment_target = '13.0'
  s.source_files = 'Sources/**/*.{swift}'
  s.dependency 'SwiftSyntax'
  s.dependency 'SwiftSyntaxBuilder'
end
