﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelDemo.aspx.cs" Inherits="Registration.UpdatePanelDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <asp:ScriptManager ID="ScriptManager1" runat="server">

 </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="AJAX Postback"></asp:Label>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AJAX Postback" />
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="ASP.NET Postback"></asp:Label>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ASP.NET Postback" />
    </form>
</body>
</html>
