using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestSharp;
using RestSharp.Authenticators;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace PaddlersParadise.Models
{
    public class USGSResponse
    {
        public static Task<IRestResponse> GetResponseContentAsync(RestClient theClient, RestRequest theRequest)
        {
            var tcs = new TaskCompletionSource<IRestResponse>();
            theClient.ExecuteAsync(theRequest, response => {
                tcs.SetResult(response);
            });
            return tcs.Task;
        }
        public class Criteria
        {
            public string locationParam { get; set; }
            public string variableParam { get; set; }
            public List<object> parameter { get; set; }
        }

        public class Note
        {
            public string value { get; set; }
            public string title { get; set; }
        }

        public class QueryInfo
        {
            public string queryURL { get; set; }
            public Criteria criteria { get; set; }
            public List<Note> note { get; set; }
        }

        public class SiteCode
        {
            public string value { get; set; }
            public string network { get; set; }
            public string agencyCode { get; set; }
        }

        public class DefaultTimeZone
        {
            public string zoneOffset { get; set; }
            public string zoneAbbreviation { get; set; }
        }

        public class DaylightSavingsTimeZone
        {
            public string zoneOffset { get; set; }
            public string zoneAbbreviation { get; set; }
        }

        public class TimeZoneInfo
        {
            public DefaultTimeZone defaultTimeZone { get; set; }
            public DaylightSavingsTimeZone daylightSavingsTimeZone { get; set; }
            public bool siteUsesDaylightSavingsTime { get; set; }
        }

        public class GeogLocation
        {
            public string srs { get; set; }
            public double latitude { get; set; }
            public double longitude { get; set; }
        }

        public class GeoLocation
        {
            public GeogLocation geogLocation { get; set; }
            public List<object> localSiteXY { get; set; }
        }

        public class SiteProperty
        {
            public string value { get; set; }
            public string name { get; set; }
        }

        public class SourceInfo
        {
            public string siteName { get; set; }
            public List<SiteCode> siteCode { get; set; }
            public TimeZoneInfo timeZoneInfo { get; set; }
            public GeoLocation geoLocation { get; set; }
            public List<object> note { get; set; }
            public List<object> siteType { get; set; }
            public List<SiteProperty> siteProperty { get; set; }
        }

        public class VariableCode
        {
            public string value { get; set; }
            public string network { get; set; }
            public string vocabulary { get; set; }
            public int variableID { get; set; }
            public bool @default { get; set; }
        }

        public class Unit
        {
            public string unitCode { get; set; }
        }

        public class Option
        {
            public string name { get; set; }
            public string optionCode { get; set; }
        }

        public class Options
        {
            public List<Option> option { get; set; }
        }

        public class Variable
        {
            public List<VariableCode> variableCode { get; set; }
            public string variableName { get; set; }
            public string variableDescription { get; set; }
            public string valueType { get; set; }
            public Unit unit { get; set; }
            public Options options { get; set; }
            public List<object> note { get; set; }
            public double noDataValue { get; set; }
            public List<object> variableProperty { get; set; }
            public string oid { get; set; }
        }

        public class Value3
        {
            public string value { get; set; }
            public List<string> qualifiers { get; set; }
            public string dateTime { get; set; }
        }

        public class Qualifier
        {
            public string qualifierCode { get; set; }
            public string qualifierDescription { get; set; }
            public int qualifierID { get; set; }
            public string network { get; set; }
            public string vocabulary { get; set; }
        }

        public class Method
        {
            public string methodDescription { get; set; }
            public int methodID { get; set; }
        }

        public class Value2
        {
            public List<Value3> value { get; set; }
            public List<Qualifier> qualifier { get; set; }
            public List<object> qualityControlLevel { get; set; }
            public List<Method> method { get; set; }
            public List<object> source { get; set; }
            public List<object> offset { get; set; }
            public List<object> sample { get; set; }
            public List<object> censorCode { get; set; }
        }

        public class TimeSery
        {
            public SourceInfo sourceInfo { get; set; }
            public Variable variable { get; set; }
            public List<Value2> values { get; set; }
            public string name { get; set; }
        }

        public class Value
        {
            public QueryInfo queryInfo { get; set; }
            public List<TimeSery> timeSeries { get; set; }
        }

        public class RootObject
        {
            public string name { get; set; }
            public string declaredType { get; set; }
            public string scope { get; set; }
            public Value value { get; set; }
            public bool nil { get; set; }
            public bool globalScope { get; set; }
            public bool typeSubstituted { get; set; }
        }


        //API Functions
        public RootObject USGSCall(string gaugeId)
        {
            //To-Do:
            //need exception for incorrect gauge id value. 
            //
            var client = new RestClient("https://waterservices.usgs.gov/nwis/iv/");
            var request = new RestRequest("?site=" + gaugeId + "&format=json&indent=on");

            var response = new RestResponse();
            Task.Run(async () =>
            {
                response = await GetResponseContentAsync(client, request) as RestResponse;
            }).Wait();
            
            RootObject jsonResponse = JsonConvert.DeserializeObject<RootObject>(response.Content); 
            return jsonResponse;
        }
    }
}
