<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayForm.aspx.cs" Inherits="DisplayForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 528px;
        }
        .style2
        {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-color: #009999">
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; background-color: #339966;">
            <tr>
                <td class="style1">
                    <h1>
                    </h1>
                </td>
                <td>
                    <h1 class="style2">
                        Results</h1>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Name</td>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Email Address</td>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Phone No.</td>
                <td>
                    <asp:Label ID="lblphoneno" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Address</td>
                <td>
                    <asp:Label ID="lbladdress" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Comment</td>
                <td>
                    <asp:TextBox ID="txtcomment" runat="server" Height="108px" ReadOnly="True" 
                        Width="353px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
