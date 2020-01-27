using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab3Asp.App_Code
{
    public class PostHandler : IHttpHandler
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

            response.Write($"POST-HTTP-SSL:ParmA={request.Form["ParmA"]?.ToString()},ParmB={request.Form["ParmB"]?.ToString()}");
        }
    }
}