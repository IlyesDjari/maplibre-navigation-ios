Pod::Spec.new do |s|
  s.name             = 'IlyesMaplibreNavigation'
  s.module_name      = 'MapLibreNavigation'
  s.version          = '4.0.0'
  s.summary          = 'Navigation SDK based on Maplibre and forked from Mapbox Navigation.'
  s.description      = <<-DESC
    A Swift-based navigation SDK using MapLibre GL, forked and adapted from Mapbox's Navigation SDK.
  DESC

  s.homepage         = 'https://github.com/IlyesDjari/maplibre-navigation-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Ilyes Djari' => 'ilyes.djari@icapps.com' }
  s.source           = { :git => 'https://github.com/IlyesDjari/maplibre-navigation-ios.git', :tag => s.version.to_s }

  s.static_framework = true
  s.platform         = :ios, '15.6'
  s.swift_version    = '5.9'
  s.requires_arc     = true

s.source_files = [
  'MapboxCoreNavigation/**/*.{swift,h,m}',
  'MapboxCoreNavigationObjC/**/*.{h,m}',
  'MapboxNavigation/**/*.{swift,h,m}',
  'MapboxNavigationObjC/**/*.{h,m}'
]

s.public_header_files = [
  'MapboxCoreNavigationObjC/**/*.h',
  'MapboxNavigationObjC/include/**/*.h'
]

s.header_mappings_dir = '.'

s.resource_bundles = {
  'IlyesMaplibreNavigationResources' => [
    'MapboxCoreNavigation/resources/**/*',
    'MapboxNavigation/Resources/Assets.xcassets'
  ]
}

  # Core dependencies
  s.dependency 'Turf', '~> 2.8'
  s.dependency 'Solar', '2.1'
  s.dependency 'MapLibre', '~> 6.0'
  s.dependency 'IlyesMapboxDirectionsCustom'
end
