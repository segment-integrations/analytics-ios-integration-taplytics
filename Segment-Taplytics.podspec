Pod::Spec.new do |s|
s.name             = "Segment-Taplytics"
s.version          = "1.1.0"
s.summary          = "Taplytics Integration for Segment's analytics-ios library."

s.description      = <<-DESC
Analytics for iOS provides a single API that lets you
integrate with over 100s of tools.

This is the Taplytics integration for the iOS library.
DESC

s.homepage         = "http://segment.com/"
s.license          =  { :type => 'MIT' }
s.author           = { "Segment" => "friends@segment.com" }
s.source           = { :git => "https://github.com/segment-integrations/analytics-ios-integration-taplytics.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/segment'

s.platform     = :ios, '8.0'
s.requires_arc = true

s.dependency 'Analytics', '~> 3.0'
s.default_subspec = 'Core'

s.subspec 'Core' do |core|
  core.source_files = 'Segment-Taplytics/Classes/**/*'
  core.dependency 'Taplytics', '~> 2.13.0'
end

s.subspec 'StaticLibWorkaround' do |workaround|
  # For users who are unable to bundle static libraries as dependencies.
  # Requires `pod 'Taplytics'` to be added seperately in your Podfile:
  # Please manually add the following file preserved by Cocoapods to your your xcodeproj file.
  workaround.preserve_paths = 'Segment-Taplytics/Classes/**/*'
end

end
