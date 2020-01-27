<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET Лабараторная работа №1</h1>        
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" Height="80px" Width="369px"></asp:TextBox>
            <br><br><br><br>
            <asp:Label ID="Label1" runat="server" Text="Текст"></asp:Label>
            <br><br>
            <asp:Button ID="Button1" runat="server" Text="Кнопка" Height="46px" Width="163px" OnClick="Button1_Click" />
            <br><br><br>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Пункт1</asp:ListItem>
                <asp:ListItem>Пункт2</asp:ListItem>
                <asp:ListItem>Пункт3</asp:ListItem>
                <asp:ListItem>Пункт4</asp:ListItem>
                <asp:ListItem>Пункт5</asp:ListItem>
            </asp:DropDownList>
            <br><br><br><br>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="1" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="2" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="3" />
        </div>     
    </div>

</asp:Content>
