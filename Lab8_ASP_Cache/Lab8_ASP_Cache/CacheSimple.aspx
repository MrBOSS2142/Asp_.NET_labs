<%@ Page Title="Простое кэширование 7 сек" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CacheSimple.aspx.cs" Inherits="Lab8_ASP_Cache._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%@ OutputCache Duration="7" VaryByParam="None" %>
    <%--<%@ OutputCache CacheProfile="MyProfile1" %>--%>

    <div class="row">
       <h2>
            Эта страница попала в кэш в
            <asp:Label ID="MessageLabel" ForeColor="Red" runat="server"></asp:Label>
            <br>
            Этот текст не попадает в кэш
            <asp:Substitution ID="Substitution1" runat="server" MethodName="GetDate"/>

        </h2>   
    </div>

</asp:Content>
