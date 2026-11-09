/// Response models for the Open Source Licenses API.

/// API Response wrapper.
class OpenlicensesResponse {
  final String status;
  final dynamic error;
  final OpenlicensesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  OpenlicensesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory OpenlicensesResponse.fromJson(Map<String, dynamic> json) => OpenlicensesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? OpenlicensesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Open Source Licenses API.

class OpenlicensesData {
  bool? domainContent;
  bool? domainData;
  bool? domainSoftware;
  List<String>? legacyIds;
  String? license;
  String? name;
  String? licenseUrl;
  String? licenseStatus;
  bool? isOsiApproved;
  List<String>? compatibleDomains;

  OpenlicensesData({
    this.domainContent,
    this.domainData,
    this.domainSoftware,
    this.legacyIds,
    this.license,
    this.name,
    this.licenseUrl,
    this.licenseStatus,
    this.isOsiApproved,
    this.compatibleDomains,
  });

  factory OpenlicensesData.fromJson(Map<String, dynamic> json) => OpenlicensesData(
      domainContent: json['domain_content'],
      domainData: json['domain_data'],
      domainSoftware: json['domain_software'],
      legacyIds: (json['legacy_ids'] as List?)?.cast<String>(),
      license: json['license'],
      name: json['name'],
      licenseUrl: json['license_url'],
      licenseStatus: json['license_status'],
      isOsiApproved: json['isOsiApproved'],
      compatibleDomains: (json['compatibleDomains'] as List?)?.cast<String>(),
    );
}

class OpenlicensesRequest {
  String name;

  OpenlicensesRequest({
    required this.name,
  });

  Map<String, dynamic> toJson() => {
      'name': name,
    };
}
