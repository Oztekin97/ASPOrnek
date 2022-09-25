using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class PersonelDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                txtId.Text = Session["ID"].ToString();
                txtAdSoyad.Text = Session["adSoyad"].ToString();
                txtEmail.Text = Session["email"].ToString();
                txtTelefon.Text = Session["Telefon"].ToString();
                txtPass.Text = Session["pass"].ToString();
            }
            else
            {
                Response.Redirect("Ayarlar.aspx?msg='Oturum olmadan giriş denemesi'");
            }
        }
        protected void btnPersonelUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(txtId.Text);
                if (Request.QueryString["ID"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["ID"]);
                }
                string adSoyad = txtAdSoyad.Text;
                string email = txtEmail.Text;
                string telefon = txtTelefon.Text;
                string sifre = txtPass.Text;
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("UPDATE uyeler SET Telefon=@telefon,EMail=@email,pass=@sifre WHERE ID=@id", baglanti);
                komut.Parameters.AddWithValue("@email", email);
                komut.Parameters.AddWithValue("@telefon", telefon);
                komut.Parameters.AddWithValue("@sifre", sifre);
                komut.Parameters.AddWithValue("@id", id);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                lblMsg.Text = adSoyad + " isimli üye başarılı bir şekilde güncellendi.";
                Response.Redirect("Ayarlar.aspx");
            }
            catch(Exception ex)
            {
                lblMsg.Text = ex.Message.ToString();
            }
        }
    }
}