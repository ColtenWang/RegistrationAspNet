<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="Registration.EventRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 173px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            width: 230px;
        }
        .auto-style6 {
            width: 230px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="LabelEvent" runat="server" Text="Event:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListEvent" runat="server" Height="19px" Width="229px">
                        <asp:ListItem>Instroduction to ASP.NET 4.5</asp:ListItem>
                        <asp:ListItem>Instroduction to Windows Azure</asp:ListItem>
                        <asp:ListItem>Take off to .Net 4.0</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelFirstName" runat="server" Text="FirstName"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxFirstName" runat="server" Height="18px" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="First Name is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelLastName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLastName" runat="server" Width="221px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Last Name is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Enter a vaild email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="ButtonSubmit" runat="server" PostBackUrl="~/EventResult.aspx" Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
