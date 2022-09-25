using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                int id = 0;
                if (Request.QueryString["id"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["id"]);
                }
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("DELETE FROM uyeler WHERE ID=@id", baglanti);
                komut.Parameters.AddWithValue("@id", id);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("UyeListesi.aspx");
            }
            catch(Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}