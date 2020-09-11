#
# Be sure to run `pod lib lint YHFastBuildSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YHFastBuildSDK'
  s.version          = '1.0.0'
  s.summary          = 'YHFastBuildSDK can build project more quickly with indextionIII When developing'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  YHFastBuildSDK can build project more quickly with injectionIII When developing.
  1、download indextionIII from app store and install to Mac
  2、open relected project
  3、add code when in appdelegate file
  #if DEBUG
          // iOS
          [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
  #endif
  4、add method (injected) to your project where you want to debug
                       DESC

  s.homepage         = 'https://github.com/XmYlzYhkj/YHFastBuildSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhengxiaolang' => 'haifeng3099@126.com' }
  s.source           = { :git => 'https://github.com/XmYlzYhkj/YHFastBuildSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YHFastBuildSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YHFastBuildSDK' => ['YHFastBuildSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
