using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class duzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack == false)
                {
                    int id = 0;
                    if (Request.QueryString["id"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["id"]);
                        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                        SqlCommand komut = new SqlCommand("SELECT * FROM uyeler WHERE ID=@id", baglanti);
                        komut.Parameters.AddWithValue("@id", id);
                        baglanti.Open();
                        SqlDataReader list = komut.ExecuteReader();
                        if (list.HasRows)
                        {
                            while (list.Read())
                            {
                                txtAd.Text = list["Ad"].ToString();
                                txtSoyad.Text = list["Soyad"].ToString();
                                txtTel.Text = list["Telefon"].ToString();
                                txtAciklama.Text = list["Aciklama"].ToString();
                                txtSifre.Text = list["pass"].ToString();
                            }
                        }
                        else
                        {
                            Label1.Text = "Aradığınız üye bulunamadı!";
                        }
                        komut.Dispose();
                        list.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
        }
        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            try
            {
                String ad = txtAd.Text;
                String soyad = txtSoyad.Text;
                String telefon = txtTel.Text;
                String aciklama = txtAciklama.Text;
                String sifre = txtSifre.Text;
                    int id = 0;
                    if (Request.QueryString["id"] != null)
                    {
                        id = Convert.ToInt32(Request.QueryString["id"]);
                    }
                    SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                    SqlCommand komut = new SqlCommand("UPDATE uyeler SET Ad=@ad,Soyad=@soyad,Telefon=@telefon,Aciklama=@aciklama,pass=@sifre WHERE ID=@id", baglanti);
                    komut.Parameters.AddWithValue("@ad", ad);
                    komut.Parameters.AddWithValue("@soyad", soyad);
                    komut.Parameters.AddWithValue("@telefon", telefon);
                    komut.Parameters.AddWithValue("@aciklama", aciklama);
                    komut.Parameters.AddWithValue("@sifre", sifre);
                    komut.Parameters.AddWithValue("@id", id);
                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Label1.Text = ad + " isimli üye başarılı bir şekilde güncellendi.";
                    Response.Redirect("UyeListesi.aspx");
                }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }
    }     
        }
    
