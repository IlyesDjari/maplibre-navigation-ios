Pod::Spec.new do |s|
  s.name             = 'MaplibreNavigation'
  s.version          = '1.0.0'
  s.summary          = 'Navigation SDK based on Maplibre and forked from Mapbox Navigation.'
  s.description      = <<-DESC
    A Swift-based navigation SDK using MapLibre GL, forked and adapted from Mapbox's Navigation SDK.
  DESC
  s.homepage         = 'https://github.com/IlyesDjari/maplibre-navigation-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Your Name' => 'ilyes.djari@icapps.com' }
  s.source           = { :git => 'https://github.com/IlyesDjari/maplibre-navigation-ios.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.0'
  s.swift_version    = '5.9'

  s.default_subspecs = 'Navigation'

  # Dependencies from Package.swift
  s.dependency 'MapboxDirections.swift', :git => 'https://github.com/IlyesDjari/mapbox-directions-swift.git', :tag => '0.23.3'
  s.dependency 'Turf', '~> 2.8'
  s.dependency 'Solar', '3.0.1'
  s.dependency 'MapLibre', '~> 6.0'

  # Objective-C Core Bridge
  s.subspec 'CoreObjC' do |sp|
    sp.source_files = 'MapboxCoreNavigationObjC/**/*.{h,m}'
  end

  # Core Navigation
  s.subspec 'Core' do |sp|
    sp.source_files = 'MapboxCoreNavigation/**/*.{swift}'
    sp.resources = ['MapboxCoreNavigation/resources/**/*']
    sp.dependency 'MaplibreNavigation/CoreObjC'
    sp.dependency 'Turf'
    sp.dependency 'MapboxDirections.swift'
  end

  # Objective-C Navigation Bridge
  s.subspec 'NavigationObjC' do |sp|
    sp.source_files = 'MapboxNavigationObjC/**/*.{h,m,swift}'
    sp.dependency 'MapLibre'
  end

  # UI Navigation
  s.subspec 'Navigation' do |sp|
    sp.source_files = 'MapboxNavigation/**/*.{swift}'
    sp.resources = ['MapboxNavigation/Resources/Assets.xcassets']
    sp.dependency 'MaplibreNavigation/Core'
    sp.dependency 'MaplibreNavigation/NavigationObjC'
    sp.dependency 'Solar'
  end
end