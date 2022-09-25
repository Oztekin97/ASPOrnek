using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPOrnek.Pages
{
    public partial class Profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                txtAdSoyad.Text = Session["adSoyad"].ToString();
                txtEmail.Text = Session["email"].ToString();
                txtTel.Text = Session["Telefon"].ToString();
                txtSifre.Text = Session["pass"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx?msg='Oturum olmadan giriş denemesi'");
            }
        }
        protected void btnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}