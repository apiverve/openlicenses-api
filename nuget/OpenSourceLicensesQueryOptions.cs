using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.OpenSourceLicenses
{
    /// <summary>
    /// Query options for the Open Source Licenses API
    /// </summary>
    public class OpenSourceLicensesQueryOptions
    {
        /// <summary>
        /// The name of the open source license to get information about
        /// Example: MIT
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }
    }
}
