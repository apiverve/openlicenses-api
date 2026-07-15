declare module '@apiverve/openlicenses' {
  export interface openlicensesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface openlicensesResponse {
    status: string;
    error: string | null;
    data: OpenSourceLicensesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface OpenSourceLicensesData {
      domainContent:     boolean | null;
      domainData:        boolean | null;
      domainSoftware:    boolean | null;
      legacyIDS:         (null | string)[];
      license:           null | string;
      name:              null | string;
      licenseURL:        null | string;
      licenseStatus:     null | string;
      isOSIApproved:     boolean | null;
      compatibleDomains: (null | string)[];
  }

  export default class openlicensesWrapper {
    constructor(options: openlicensesOptions);

    execute(callback: (error: any, data: openlicensesResponse | null) => void): Promise<openlicensesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: openlicensesResponse | null) => void): Promise<openlicensesResponse>;
    execute(query?: Record<string, any>): Promise<openlicensesResponse>;
  }
}
