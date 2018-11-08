Pod::Spec.new do |s|
  s.name             = 'CyaneaOctopus'
  s.version          = '0.3.1'
  s.summary          = 'Color framework for Swift (Gradient colors, hexcode support, colors from images & more).'

  s.description      = <<-DESC
CyaneaOctopus is a color framework for written in pure Swift. It is based upon the Chameleon framework.
                       DESC

  s.homepage         = 'https://github.com/adammcelhaney/CyaneaOctopus'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           =  'Adam McElhaney'
  s.source           = { :git => 'https://github.com/adammcelhaney/CyaneaOctopus.git', :tag => s.version.to_s }

  s.swift_version = '4.2'
  s.ios.deployment_target = '9.0'

  s.source_files = 'CyaneaOctopus/Classes/**/*'

  s.frameworks = 'UIKit', 'CoreGraphics'

end
