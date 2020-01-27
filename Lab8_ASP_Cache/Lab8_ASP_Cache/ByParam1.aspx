<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ByParam1.aspx.cs" Inherits="Lab8_ASP_Cache.About" %>
    
<%@ OutputCache Duration="7" VaryByParam="id" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h1>
            Страница была помещена в кэш в 
            <asp:Label ID="Label1" ForeColor="Red" runat="server"></asp:Label>
            <br>
            Значение параметра ID = 
            <asp:Label ID="MessageLabel" runat="server"></asp:Label>
        </h1>
        <a href="ByParam1.aspx?id=1">Парам1</a><br />
        <a href="ByParam1.aspx?id=2">Парам2</a><br />
        <a href="ByParam1.aspx?id=3">Парам3</a><br />
    </div>
</asp:Content>
