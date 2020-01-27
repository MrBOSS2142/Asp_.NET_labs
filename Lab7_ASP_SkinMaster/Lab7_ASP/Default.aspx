<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab7_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:Label ID="Label1" CssClass="text" runat="server" Text="Здесь могла быть ваша реклама"></asp:Label>
        <br>
        <asp:Label ID="Label2" CssClass="text1" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit."></asp:Label>
        <br>
        <asp:Button ID="Button1" CssClass="but" runat="server" Text="Отправить" />
        <p class="text">Hello world!</p>
        <br>
    </div>

</asp:Content>
