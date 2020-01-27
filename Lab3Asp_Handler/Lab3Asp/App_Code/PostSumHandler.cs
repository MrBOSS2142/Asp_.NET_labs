using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3Asp.App_Code
{
    public class PostSumHandler : IHttpHandler
    {
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;

            response.Headers.Add("Access-Control-Allow-Origin", "*");

            int num1 = Int32.Parse(request.Params["parmA"]);
            int num2 = Int32.Parse(request.Params["parmB"]);
            int result = num1 + num2;

            response.Write($"Result SUM: {result}");
        }
    }
}