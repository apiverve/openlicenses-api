# Open Source Licenses API - PHP Package

Open Source Licenses is a software license API that looks up open source license details by name or identifier. It returns SPDX identifiers, canonical URLs, OSI approval status, legacy IDs, and domain applicability for software, content, or data.

## Installation

Install via Composer:

```bash
composer require apiverve/openlicenses
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Openlicenses\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['name' => 'MIT']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Openlicenses\Client;
use APIVerve\Openlicenses\Exceptions\APIException;
use APIVerve\Openlicenses\Exceptions\ValidationException;

try {
    $response = $client->execute(['name' => 'MIT']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/openlicenses?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/openlicenses?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/openlicenses?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
