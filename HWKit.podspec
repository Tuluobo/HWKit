#
# Be sure to run `pod lib lint HWKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HWKit'
  s.version          = '0.1.0'
  s.summary          = 'HWKit is a common swift extension lib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       HWKit is a common swift extension lib.
                       DESC

  s.homepage         = 'https://github.com/Tuluobo/HWKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tuluobo' => 'tuluobo@vip.qq.com' }
  s.source           = { :git => 'https://github.com/Tuluobo/HWKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/Tuluobo'

  s.ios.deployment_target = '9.0'

  s.source_files = 'HWKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HWKit' => ['HWKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
