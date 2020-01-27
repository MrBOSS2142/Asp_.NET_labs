using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3Asp.App_Code
{
    public class GetHandler : IHttpHandler
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

            response.Write($"GET-HTTP-SSL:ParmA={request.Params["ParmA"]},ParmB={request.Params["ParmB"]}");
        }
    }
}