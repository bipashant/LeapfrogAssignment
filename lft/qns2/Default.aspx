<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 468px;
        }
        .style2
        {
            width: 197px;
        }
        .style4
        {
            font-size: x-large;
            text-align: center;
        }
        .style5
        {
            width: 209px;
        }
        .style6
        {
            width: 444px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<head>

<link href="Style/style.css" rel="stylesheet" type="text/css" />

      <script type="text/javascript">
          function validate() {

              if (document.getElementById('<%=chkjavascript.ClientID %>').checked == 1) 
              {
                  var Firstname = document.getElementById('<%=txtFirstName.ClientID %>').value;
                  var address = document.getElementById('<%=txtaddress.ClientID %>').value;
                  var Email = document.getElementById('<%=txtEmail.ClientID %>').value;
                  var Telephoneno = document.getElementById('<%=txttelephoneno.ClientID %>').value;
                  var comment = document.getElementById('<%=txtcomment.ClientID %>').value;



                  if (Firstname == "") {
                      alert("Enter First Name");
                      document.getElementById("<%=txtFirstName.ClientID%>").focus();
                      return false;
                  }

                  document.getElementById("<%=txtEmail.ClientID%>").focus();

                  if (Email == "") {

                      document.getElementById("<%=txtEmail.ClientID%>").focus();
                      alert("Enter Email");
                      return false;
                  }
                  var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
                  var EmailmatchArray = Email.match(emailPat);

                  if (EmailmatchArray == null) {
                      alert("Your email address seems incorrect. Please try again.");
                      return false;
                  }
                  document.getElementById("<%=txttelephoneno.ClientID%>").focus();
                  if (Telephoneno == "") {
                      alert("Enter Telephone No.");
                      return false;
                  }


                  var digits = "0123456789";
                  var temp;

                  for (var i = 0; i < document.getElementById("<%=txttelephoneno.ClientID %>").value.length; i++) {
                      temp = document.getElementById("<%=txttelephoneno.ClientID%>").value.substring(i, i + 1);
                      if (digits.indexOf(temp) == -1) {
                          alert("Please enter valid telephone Number ");
                          document.getElementById("<%=txttelephoneno.ClientID%>").focus();
                          return false;
                      }
                  }


                  document.getElementById("<%=txtaddress.ClientID%>").focus();
                  if (address == "") {
                      document.getElementById("<%=txtaddress.ClientID%>").focus();
                      alert("Enter Address");
                      return false;
                  }
                  document.getElementById("<%=txtcomment.ClientID%>").focus();

                  if (comment == "") {
                      document.getElementById("<%=txttelephoneno.ClientID%>").focus();
                      alert("Please enter your comment");

                      return false;
                  }



                  alert("Thank you " + Firstname + "!!!!For Your Feedback ");
              }
           



          }
    </script>

    
    
</head>
    <div >
        <div class="container"  >
			
            <header>
            </header>       
      <div  class="form">
    		<form id="contactform"> 
                

                &nbsp;<h1 class="style4">
                    <strong>Feedback Form</strong></h1>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" 
                    Text="Please fill the Feedback form below"></asp:Label>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtFirstName" runat="server" Width="200px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="style6">
                            <asp:Label ID="lblfnameerr" runat="server" Text="lblfnameerr" Visible="False" 
                                ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtEmail" runat="server" Width="200px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="style6">
                            <asp:Label ID="lblemailerr" runat="server" Text="lblemailerr" Visible="False" 
                                ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label4" runat="server" Text="Telephone No."></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txttelephoneno" runat="server" Width="200px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="style6">
                            <asp:Label ID="lblnoerr" runat="server" Text="lblnoerr" Visible="False" 
                                ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtaddress" runat="server" Width="200px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="style6">
                            <asp:Label ID="lbladdresserr" runat="server" Text="lbladdresserr" 
                                Visible="False" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label8" runat="server" Text="Comment"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtcomment" runat="server" Height="98px" TextMode="MultiLine" 
                                Width="254px"></asp:TextBox>
                        </td>
                        <td class="style6">
                            <asp:Label ID="lblcomenterr" runat="server" Text="lblcomenterr" Visible="False" 
                                ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:CheckBox ID="chkjavascript" runat="server" Text="Enable Client Side Validation" />
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:Button ID="Button1" runat="server" BackColor="#35496A" Font-Bold="True" 
                                ForeColor="#FFFF99" onclick="Button1_Click" OnClientClick="return validate()" 
                                Text="Submit" Width="98px" />
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                </table>
&nbsp;<br />
                
&nbsp;<br />

                
&nbsp;&nbsp;<br>
            &nbsp;</form> 
</div>      
</div>
    </div>
</asp:Content>

