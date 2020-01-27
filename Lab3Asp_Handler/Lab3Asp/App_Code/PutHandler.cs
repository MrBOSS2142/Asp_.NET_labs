using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3Asp.App_Code
{
    public class PutHandler : IHttpHandler
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

            response.Write($"PUT-HTTP-SSL:ParmA={request.Form["ParmA"]?.ToString()},ParmB={request.Params["ParmB"]?.ToString()}");
        }
    }
}