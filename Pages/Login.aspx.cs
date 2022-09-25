using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtKA.Text;
                string pass = txtPass.Text;
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("SELECT * FROM uyeler WHERE EMail=@email And Pass=@pass", baglanti);
                komut.Parameters.AddWithValue("@email",email);
                komut.Parameters.AddWithValue("@pass", pass);
                baglanti.Open();
                SqlDataReader list = komut.ExecuteReader();
                if (list.HasRows)
                {
                    while (list.Read())
                    {
                        Session["email"] = list["email"];
                        Session["adSoyad"] = list["Ad"].ToString() +" "+ list["Soyad"].ToString();
                        Session["Telefon"] = list["Telefon"];
                        Session["pass"] = list["pass"];
                        Response.Redirect("Profil.aspx");
                    }
                }
                else
                {
                    lblHata.Text = "Giriş bilgileriniz hatalıdır.Lütfen bilgilerinizi kontrol ediniz.";
                }
                komut.Dispose();
                list.Close();
            }
            catch(Exception ex)
            {
                LblThrow.Text = ex.Message.ToString();
            }
        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}