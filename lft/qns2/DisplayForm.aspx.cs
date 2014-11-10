using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

            if (IsValid1())
            {
                lblname.Text = Session.Contents["fname"].ToString();
                lblemail.Text = Session.Contents["email"].ToString();
                lblphoneno.Text = Session.Contents["telephoneno"].ToString();
                lbladdress.Text = Session.Contents["address"].ToString();
                txtcomment.Text = Session.Contents["comment"].ToString(); 
            }
            else
            {
               // Response.Write("error");
                Response.Redirect("Default.aspx");
            }


           
        
    }

    private bool IsValid1()
    {
        
        int status = 1;
        string fname, email, telephoneno, address, comment;
        fname = Session["fname"].ToString();
        email= Session["email"].ToString();
        telephoneno= Session["telephoneno"].ToString();
        address= Session["address"].ToString();
        comment= Session["comment"].ToString();


       

        if (fname.Length == 0)
        {
            Session["fnameerror"] = "Full Name Required";
            status *= 0;
        }

        if (email.Length == 0)
        {
            Session["emailerror"] = "Email Address Required";
            status *= 0;
        }
        else if(!IsEmail(email))
        {
            Session["emailerror"] = "Invalid Email Address";
            status *= 0;
        }

        if (address.Length == 0)
        {
            Session["addresserror"] = "Address Required";
            status *= 0;
        }

        if (telephoneno.Length == 0)
        {
            Session["telephonenoerror"] = "Telephone No. Required";
            status *= 0;
        }
        else if (!IsNumeric(telephoneno))
        {
            Session["telephonenoerror"] = "Invalid Telephone No.";
            status *= 0;
        }

        if (comment.Length == 0)
        {
            Session["commenterror"] = "Comment Required";
            status *= 0;
        }


        if (status == 0)
            return false;
        else
        {
            return true;
        }

    }

    public static bool IsEmail(string Email)
    {
        string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
            @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
            @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(Email))
            return (true);
        else
            return (false);
    }

    public bool IsNumeric(string number)
    {
        string numberset = "+0123456789";
        Boolean status = false;

        for (int i = 0; i < number.Count(); i++)

        {
            if (numberset.Contains(number[i]))
            {
                status = true;

            }
            else
            {
                status = false;
                }
        }
        return status;

    }
}