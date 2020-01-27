<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab11_ASP_asmx_web_form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
            <tbody>
                <tr>
                    <td>X</td>
                    <td>
                        <asp:TextBox ID="TxbX" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Y</td>
                    <td>
                        <asp:TextBox ID="TxbY" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Result:</td>
                    <td>
                        <asp:Label ID="LabelResult" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnAdd" Text="+" runat="server" OnClick="BtnAdd_Click" />
                        <asp:Button ID="BtnSub" Text="-" runat="server" OnClick="BtnSub_Click" />
                        <asp:Button ID="BtnMul" Text="*" runat="server" OnClick="BtnMul_Click" />
                        <asp:Button ID="ButtonClear" Text="ClearApplication" runat="server" OnClick="BtnClear_Click" />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Последняя сумма (session)"></asp:Label>
                        <asp:Label ID="lastsum" runat="server" Text=""></asp:Label>
                        <br>
                        <asp:Label ID="Label4" runat="server" Text="Последняя разность (application)"></asp:Label>
                        <asp:Label ID="lastsub" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Session"></asp:Label>
                        <asp:GridView ID="GVCalculations" runat="server">

                        </asp:GridView>
                    </td>
                </tr>

                                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Application"></asp:Label>
                        <asp:GridView ID="GVCalculationsSub" runat="server">

                        </asp:GridView>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
    </form>
</body>
</html>
