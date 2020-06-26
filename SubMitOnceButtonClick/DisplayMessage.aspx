<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayMessage.aspx.cs" Inherits="DisplayMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript">
        function ClientSideClick(myButton) {
            //  client side validation
            if (typeof (Page_ClientValidate) == 'function') {
                if (Page_ClientValidate() == false) {
                    return false;
                }
            }

            //  make sure the button is not of type 'submit' but 'button'
            if (myButton.getAttribute('type') == 'button') {
                //  disable the button
                myButton.disabled = true;
                myButton.className = "btn-inactive";
                myButton.value = "processing...";

                //  display message
                document.getElementById("message-div").style.display = "block";
            }
            return true;
        }
    </script>



    <style type="text/css"> 
        #message-div
        {
        position: absolute;
        top: 50%;
        left: 50%;
        margin-left: -250px;
        margin-top: -150px;
        background-color: #0066FF;
        filter: progid:DXImageTransform.Microsoft.Gradient(
        GradientType=0,StartColorStr='#0066FF',
        EndColorStr='#CCFFFF');
        width: 500px;
        height: 300px;
        border: 2px solid #FF6600;
        font-family: Arial;
        text-align:center;
        color:#FFFFFF;
        font-size: 18px;
        display:none;
        } 
        #message-div div
        {
        padding:70px;
        } 
    </style>
    <link href="Content/Style.css" rel="stylesheet" type="text/css">
    <title>Display Message</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="outline">
            <asp:Label ID="lblHeader" runat="server" Text="Submit once: disable the button upon submission" CssClass="header" Width="100%"></asp:Label>
            
            <p>&nbsp;</p>

            <table width="300" align="center" cellpadding="2" cellspacing="2">
                <tr>
                    <td align="right">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="normal-text" Width="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="normal-text" Width="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn-active" Text="Submit Data" OnClientClick="ClientSideClick(this)" UseSubmitBehavior="False" OnClick="btnSubmit_Click" Width="120px" />
                    </td>
                </tr>
            </table>
            <p><asp:Label ID="lblNote" runat="server" CssClass="note-text" Width="100%"></asp:Label></p>
            <p>&nbsp;</p>
            <div class="footer">&nbsp;</div>
        </div>
        <div id="message-div">
            <div>Processing data, please wait...</div>
        </div>
    </form>
</body>
</html>
