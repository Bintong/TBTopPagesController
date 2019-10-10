#
# Be sure to run `pod lib lint TBTopPagesController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTopPagesController'
  s.version          = '0.1.3'
  s.summary          = '可切换导航栏'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
可以相互切换的导航栏，对于易viewController 为区分点，不是view
                       DESC

  s.homepage         = 'https://github.com/Bintong/TBTopPagesController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yaxun_123@163.com' => 'tongbinapp@gmail.com' }
  s.source           = { :git => 'https://github.com/Bintong/TBTopPagesController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TBTopPagesController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TBTopPagesController' => ['TBTopPagesController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
