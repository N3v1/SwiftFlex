Pod::Spec.new do |s|
  s.name         = 'SwiftFlex'
  s.version      = '1.0'
  s.summary      = 'SwiftFlex: Elevate Your SwiftUI Experience, Unleash Infinite Possibilities.'

  s.description                = <<-DESC
                                    `SwiftFlex` is a versatile SwiftUI UI Library that empowers developers to create dynamic and polished user interfaces effortlessly. Packed with a rich collection of pre-built components and time-saving extensions, SwiftFlex streamlines the SwiftUI development process. Elevate your app's design and functionality with ease, focusing on what matters most – delivering a seamless and engaging user experience. SwiftFlex: Unleash the full potential of your SwiftUI projects.
                                 DESC

  s.homepage                   = 'https://github.com/N3v1/SwiftFlex'
  s.license                    = 'MIT'
  s.author                     = 'NH'

  s.requires_arc               = true
  s.ios.deployment_target      = '17.0'
  s.tvos.deployment_target     = '17.0'
  s.watchos.deployment_target  = '10.0'
  s.macos.deployment_target    = '14.0'

  s.swift_version = '5.9'

  s.source                     = { :git => 'https://github.com/N3v1/SwiftFlex.git', :tag => s.version }

  s.requires_arc = true
end
