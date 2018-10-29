Pod::Spec.new do |s|
  s.name             = 'CyaneaOctopus'
  s.version          = '0.1.0'
  s.summary          = 'Color framework for Swift (Gradient colors, hexcode support, colors from images & more).'

  s.description      = <<-DESC
CyaneaOctopus is a color framework for written in pure Swift. It is based upon the Chameleon framework.
                       DESC

  s.homepage         = 'https://github.com/adammcelhaney/CyaneaOctopus'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           =  'Adam McElhaney'
  s.source           = { :git => 'https://github.com/adammcelhaney/CyaneaOctopus.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CyaneaOctopus/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CyaneaOctopus' => ['CyaneaOctopus/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
