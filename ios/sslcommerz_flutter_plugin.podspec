#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint sslcommerz_flutter_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'sslcommerz_flutter_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin to implement SSLCommerz payment gateway.'
  s.description      = <<-DESC
A new Flutter plugin to implement SSLCommerz payment gateway.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.preserve_paths = 'SSLCommerzSDK.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework SSLCommerzSDK' }
  s.vendored_frameworks = 'SSLCommerzSDK.framework'
end
