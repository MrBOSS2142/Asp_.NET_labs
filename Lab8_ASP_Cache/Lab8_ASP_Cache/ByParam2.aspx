<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ByParam2.aspx.cs" Inherits="Lab8_ASP_Cache.Contact" %>

<%@ OutputCache Duration="7" VaryByParam="name;age" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h1>
            Страница была помещена в кэш в 
            <asp:Label ID="Label1" ForeColor="Red" runat="server"></asp:Label>
            <br>
            <asp:Label ID="MessageLabel" runat="server"></asp:Label>
        </h1>
        <a href="ByParam2.aspx?name=Sergo&age=20">Sergo20</a><br />
        <a href="ByParam2.aspx?name=Sergo&age=21">Sergo21</a><br />
        <a href="ByParam2.aspx?name=Mike&age=21">Mike21</a><br />
        <a href="ByParam2.aspx?name=Bob&age=17">Bob17</a><br />
    </div>
</asp:Content>
