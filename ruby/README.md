# Open Source Licenses API - Ruby Gem

Open Source Licenses is a software license API that looks up open source license details by name or identifier. It returns SPDX identifiers, canonical URLs, OSI approval status, legacy IDs, and domain applicability for software, content, or data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_openlicenses'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_openlicenses
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_openlicenses'

# Initialize the client
client = APIVerve::Openlicenses::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ name: "MIT" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ name: "MIT" })
  puts response["data"]
rescue APIVerve::Openlicenses::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Openlicenses::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Openlicenses::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain_content": false,
    "domain_data": false,
    "domain_software": true,
    "legacy_ids": [
      "mit-license"
    ],
    "license": "MIT",
    "name": "MIT License",
    "license_url": "https://opensource.org/licenses/MIT",
    "license_status": "active",
    "isOsiApproved": true,
    "compatibleDomains": [
      "software"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/openlicenses?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/openlicenses?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/openlicenses?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
