using System;
public partial class _Default : System.Web.UI.Page
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            try
            {
              
              lblfnameerr.Text = Session["fnameerror"].ToString();
              lblemailerr.Text = Session["emailerror"].ToString();
              lblnoerr.Text = Session["telephonenoerror"].ToString();
              lblcomenterr.Text = Session["commenterror"].ToString();
              lbladdresserr.Text = Session["addresserror"].ToString();

                 lblfnameerr.Visible = true;
                lblemailerr.Visible = true;
                lblnoerr.Visible = true;
                lblcomenterr.Visible = true;
                lbladdresserr.Visible = true;

                txtFirstName.Text = Session.Contents["fname"].ToString();
                txtEmail.Text = Session.Contents["email"].ToString();
                txttelephoneno.Text = Session.Contents["telephoneno"].ToString();
                txtaddress.Text = Session.Contents["address"].ToString();
                txtcomment.Text = Session.Contents["comment"].ToString();
                Session.Clear();
            }
            catch (Exception)
            {
                Session.Clear();
               
            }
       

        }
      
            

   }




   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fname = txtFirstName.Text;
        string telephoneno = txttelephoneno.Text;
        string comment = txtcomment.Text;
        string address= txtaddress.Text;
        string email = txtEmail.Text;
     Session.Clear();

        
        Session.Add("fname",fname);
        Session.Add("telephoneno",telephoneno);
         Session.Add("comment",comment);
         Session.Add("address",address);
         Session.Add("email",email);


        Session.Add("fnameerror", "");
        Session.Add("emailerror", "");
        Session.Add("addresserror", "");
        Session.Add("telephonenoerror", "");
        Session.Add("commenterror", "");

        lblfnameerr.Visible = false;

        lblemailerr.Visible = false;

        lblnoerr.Visible = false;

        lblcomenterr.Visible = false;

        lbladdresserr.Visible = false;

        Response.Redirect("DisplayForm.aspx");



    }

    
}