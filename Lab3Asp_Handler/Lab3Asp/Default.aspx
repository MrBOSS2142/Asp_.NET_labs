<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3Asp._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">

        <asp:Label ID="Label1" runat="server" Text="Label">Параметр A</asp:Label>
        <br>  
        <asp:TextBox ID="parmA" runat="server"></asp:TextBox>
        <br> 
        <asp:Label ID="Label2" runat="server" Text="Label">Параметр B</asp:Label>
        <br> 
        <asp:TextBox ID="parmB" runat="server"></asp:TextBox>
        <br> <br> 
        <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
        <br> <br> <br> 
        <asp:Button ID="Button1" runat="server" Text="GET" OnClick="buttonGet_Click" />
        <asp:Button ID="Button2" runat="server" Text="POST" OnClick="buttonPost_Click" />
        <asp:Button ID="Button3" runat="server" Text="PUT" OnClick="buttonPut_Click" />
        <input type="button" value="SUM" onclick="GetSum()" />
        <asp:Button ID="Button4" runat="server" OnClick="ButtonForb_Click" Text="403" />
        </form>
         <script type="text/javascript">
        function GetSum() {
            let num1 = document.getElementById("parmA");
            let num2 = document.getElementById("parmB");
            let result = document.getElementById('Result');

            let url = `http://localhost:86/postSum.ssl?parma=${num1.value}&parmb=${num2.value}`;

            function responseLoad() {
                if (request.readyState == 4) {
                    var status = request.status;
                    if (status == 200) {
                        result.innerText = request.responseText
                    } else {
                        result.innerText = request.statusText;
                    }
                }
            }

            let request = new XMLHttpRequest();
            request.open("POST", url, true);
            request.onload = responseLoad;
            request.send();           
        }
    </script>

    </div>
        </body>
    </html>

