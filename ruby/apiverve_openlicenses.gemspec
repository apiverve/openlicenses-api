# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_openlicenses"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Open Source Licenses API - Ruby Client"
  spec.description   = "Open Source Licenses is a software license API that looks up open source license details by name or identifier. It returns SPDX identifiers, canonical URLs, OSI approval status, legacy IDs, and domain applicability for software, content, or data."
  spec.homepage      = "https://apiverve.com/marketplace/openlicenses?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/openlicenses-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/openlicenses"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
