# Open Source Licenses API - Dart/Flutter Client

Open Source Licenses is a software license API that looks up open source license details by name or identifier. It returns SPDX identifiers, canonical URLs, OSI approval status, legacy IDs, and domain applicability for software, content, or data.

[![pub package](https://img.shields.io/pub/v/apiverve_openlicenses.svg)](https://pub.dev/packages/apiverve_openlicenses)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Open Source Licenses API](https://apiverve.com/marketplace/openlicenses?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_openlicenses: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_openlicenses/apiverve_openlicenses.dart';

void main() async {
  final client = OpenlicensesClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'name': 'MIT'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Open Source Licenses API](https://apiverve.com/marketplace/openlicenses?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/openlicenses](https://docs.apiverve.com/ref/openlicenses?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
