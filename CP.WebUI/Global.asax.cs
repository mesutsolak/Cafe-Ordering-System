using CP.WebUI.App_Start;
using CP.WebUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace CP.WebUI
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_Error(object sender, EventArgs e)      
        {
            var exception = Server.GetLastError(); //Olu�an hatay� de�i�kene atad�k.
                                                   //E�er hata kayd� (log) tutulacak ise gerekli kodlar buraya.
            var httpException = exception as HttpException;
            Response.Clear();
            Server.ClearError(); //Sunucudaki hatay� temizledik.
            Response.TrySkipIisCustomErrors = true; //IIS'in tipik hata sayfalar�n� g�rmezden geldik.
            var routeData = new RouteData();
            routeData.Values["controller"] = "Error"; //Hata mesajlar�n� y�netece�imiz Controller ismi
            routeData.Values["action"] = "PageError"; //Controller i�indeki default Action ismi
            routeData.Values["exception"] = exception;
            //Response.StatusCode = 500;

            if (httpException != null)
            {
                Response.StatusCode = httpException.GetHttpCode();

                switch (Response.StatusCode)
                {
                    case 403: //E�er 403 hatas� meydana gelmi� ise Http403 Action'� devreye girecek.
                        routeData.Values["action"] = "Page403";
                        break;
                    case 404: //E�er 404 hatas� meydana gelmi� ise Http404 Action'� devreye girecek.
                        routeData.Values["action"] = "Page404";
                        break;
                    case 401:
                        routeData.Values["Action"] = "Page401";
                        break;   
                    case 500:
                        routeData.Values["Action"] = "Page500";
                        break;
                }
            }

            IController errorsController = new Controllers.ErrorController();
            var rc = new RequestContext(new HttpContextWrapper(Context), routeData);
            errorsController.Execute(rc);
        }

    }
}
