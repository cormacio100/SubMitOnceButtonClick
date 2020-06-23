<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post" autocomplete="off">
        <div>
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn-active" Text="Submit Data" OnClientClick="ClientSideClick(this)" UseSubmitBehavior="false" OnClick="btnSubmit_Click" Width="120px" />
        </div>
    </form>
</body>
</html>
