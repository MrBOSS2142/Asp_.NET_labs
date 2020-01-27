using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Lab11_ASP_asmx
{
    /// <summary>
    /// Сводное описание для SSLService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Чтобы разрешить вызывать веб-службу из скрипта с помощью ASP.NET AJAX, раскомментируйте следующую строку. 
    // [System.Web.Script.Services.ScriptService]
    public class SSLService : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public int Add(int x, int y)
        {
            List<string> calculations;

            int val;

            if (Session["SUM"] == null)
            {
                calculations = new List<string>();
            }
            else
            {
                calculations = (List<string>)Session["SUM"];
            }

            if (Session["lsum"] == null)
            {
                val = 0;
            }
            else
            {
                val = (int)Session["lsum"];
            }

            string strRecentCalculation = x.ToString() + " + "
                + y.ToString() +
                " = " + (x + y).ToString();

            calculations.Add(strRecentCalculation);
            Session["SUM"] = calculations;
            Session["lsum"] = x + y;

            return x + y;
        }

        [WebMethod(EnableSession = true)]
        public int GetLastSum()
        {
            if (Session["lsum"] == null)
            {
                return 0;
            }
            else
            {
                return (int)Session["lsum"];
            }
        }


        [WebMethod(EnableSession = true)]
        public List<string> GetCalculations()
        {
            if (Session["SUM"] == null)
            {
                List<string> calculations = new List<string>();
                calculations.Add("Тут ничего нет!!! Приходите завтра...");

                return calculations;
            }
            else
            {
                return (List<string>)Session["SUM"];
            }
        }

        [WebMethod]
        public List<string> GetCalculationsApll()
        {
            if (Application["SUB"] == null)
            {
                List<string> calculationssub = new List<string>();
                calculationssub.Add("Тут ничего нет!!! Приходите завтра...");

                return calculationssub;
            }
            else
            {
                return (List<string>)Application["SUB"];
            }
        }

        [WebMethod]
        public void DropApp()
        {
            Application["SUB"] = new List<string>();
            Application["lsub"] = 0;
        }

        [WebMethod]
        public int GetLastSub()
        {
            if (Application["lsub"] == null)
            {
                return 0;
            }
            else
            {
                return (int)Application["lsub"];
            }
        }

        [WebMethod]
        public int Sub(int x, int y)
        {

            List<string> calculationssub;

            int val;

            if (Application["SUB"] == null)
            {
                calculationssub = new List<string>();
            }
            else
            {
                calculationssub = (List<string>)Application["SUB"];
            }


            if (Application["lsub"] == null)
            {
                val = 0;
            }
            else
            {
                val = (int)Application["lsub"];
            }

            string strRecentCalculationSub = x.ToString() + " - "
                + y.ToString() +
                " = " + (x - y).ToString();

            calculationssub.Add(strRecentCalculationSub);
            Application["SUB"] = calculationssub;
            Application["lsub"] = x - y;


            return x - y;
        }

        [WebMethod]
        public int Mul(int x, int y)
        {
            return x * y;
        }
    }
}
