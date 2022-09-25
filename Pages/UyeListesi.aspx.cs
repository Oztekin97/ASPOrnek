using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class UyeListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand komut = new SqlCommand("SELECT * FROM uyeler", baglanti);
            baglanti.Open();
            SqlDataReader list = komut.ExecuteReader();
            grdUyeList.DataSource = list;
            grdUyeList.DataBind();
            komut.Dispose();
            list.Close();

            //repeater
            DataTable tblUyeler = new DataTable();
            SqlCommand rKomut = new SqlCommand("SELECT * FROM uyeler", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(rKomut);
            da.Fill(tblUyeler);
            rptUyeList.DataSource = tblUyeler;
            rptUyeList.DataBind();
            baglanti.Close();
            rKomut.Dispose();
            baglanti.Dispose();
            da.Dispose();
        }
    }
}