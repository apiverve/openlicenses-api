Pod::Spec.new do |s|
  s.name             = 'APIVerveOpenSourceLicenses'
  s.version          = '1.2.3'
  s.summary          = 'Open Source Licenses is a software license API that looks up open source license details by name or identifier.'
  s.description      = <<-'DESC'
Open Source Licenses is a software license API that looks up open source license details by name or identifier. It returns SPDX identifiers, canonical URLs, OSI approval status, legacy IDs, and domain applicability for software, content, or data.

This iOS/macOS SDK provides a convenient way to access the Open Source Licenses from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/openlicenses?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/openlicenses-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveOpenSourceLicenses/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
