<%@ Page Title="About" Theme="Theme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lab7_ASP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Label ID="Label1"  runat="server" Text="Земля— третья по удалённости от Солнца планета Солнечной системы. "></asp:Label>
        <br><br>
        <asp:Label ID="Label2" runat="server" SkinID="lab2" Text="Hello world"></asp:Label>
        <br><br>
        <asp:Button ID="Button1"  runat="server" Text="Отправить" />
        <br><br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>    
        <br><br>
        <asp:Button ID="Button2" runat="server" Text="Кнопка без SKIN" EnableTheming="false"/>
    </div>
</asp:Content>
