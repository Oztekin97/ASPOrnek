using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnPersonelDuzenle_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text;
                string pass = txtPass.Text;
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("SELECT * FROM uyeler WHERE EMail=@email And Pass=@pass", baglanti);
                komut.Parameters.AddWithValue("@email", email);
                komut.Parameters.AddWithValue("@pass", pass);
                baglanti.Open();
                SqlDataReader list = komut.ExecuteReader();
                if (list.HasRows)
                {
                    while (list.Read())
                    {
                        Session["ID"] = list["ID"];
                        Session["email"] = list["email"];
                        Session["adSoyad"] = list["Ad"].ToString() + " " + list["Soyad"].ToString();
                        Session["Telefon"] = list["Telefon"];
                        Session["pass"] = list["pass"];
                        Response.Redirect("PersonelDuzenle.aspx");
                    }
                }
                else
                {
                    lblMsg.Text = "Giriş bilgileriniz hatalıdır.Lütfen bilgilerinizi kontrol ediniz.";
                }
                komut.Dispose();
                list.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message.ToString();
            }
        }
        protected void btnPersonelSil_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text;
                string pass = txtPass.Text;
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("DELETE FROM uyeler WHERE EMail=@email AND pass=@pass", baglanti);
                komut.Parameters.AddWithValue("@email",email);
                komut.Parameters.AddWithValue("@pass", pass);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("UyelerinListesi.aspx");
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }

        }
    }   
    }
