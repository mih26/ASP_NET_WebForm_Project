using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1270381.Management
{
    public partial class Report01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString))
            {
                using(SqlDataAdapter da = new SqlDataAdapter("SELECT * From Teachers", con))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Teachers");
                    CrystalReport1 rpt = new CrystalReport1();
                    rpt.SetDataSource(ds);
                    CrystalReportViewer1.ReportSource= rpt;
                    CrystalReportViewer1.RefreshReport();
                }
            }
        }
    }
}