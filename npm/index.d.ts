declare module '@apiverve/openlicenses' {
  export interface openlicensesOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface openlicensesResponse {
    status: string;
    error: string | null;
    data: OpenSourceLicensesData;
    code?: number;
  }


  interface OpenSourceLicensesData {
      domainContent:  boolean;
      domainData:     boolean;
      domainSoftware: boolean;
      legacyIDS:      string[];
      license:        string;
      name:           string;
      licenseURL:     string;
      licenseStatus:  string;
  }

  export default class openlicensesWrapper {
    constructor(options: openlicensesOptions);

    execute(callback: (error: any, data: openlicensesResponse | null) => void): Promise<openlicensesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: openlicensesResponse | null) => void): Promise<openlicensesResponse>;
    execute(query?: Record<string, any>): Promise<openlicensesResponse>;
  }
}
