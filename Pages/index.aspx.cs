﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                String ad = txtAd.Text;
                String soyad = txtSoyad.Text;
                String telefon = txtTel.Text;
                String aciklama = txtAciklama.Text;
                String mail = txtMail.Text;
                String sifre = txtSifre.Text;
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand komut = new SqlCommand("INSERT INTO uyeler(Ad,Soyad,Telefon,Aciklama,Email,pass) VALUES (@ad,@soyad,@telefon,@aciklama,@mail,@sifre)", baglanti);
                komut.Parameters.AddWithValue("@ad", ad);
                komut.Parameters.AddWithValue("@soyad", soyad);
                komut.Parameters.AddWithValue("@telefon", telefon);
                komut.Parameters.AddWithValue("@aciklama", aciklama);
                komut.Parameters.AddWithValue("@mail", mail);
                komut.Parameters.AddWithValue("@sifre", sifre);
                baglanti.Open();
                komut.ExecuteNonQuery();
                baglanti.Close();
                Label1.Text = ad + " isimli üye başarılı bir şekilde eklendi.";
            }
            catch(Exception ex)
            {
                ex.Message.ToString();
            }
        }
    }
}