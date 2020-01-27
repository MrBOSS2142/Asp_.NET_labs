<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VaryByCustom.aspx.cs" Inherits="Lab8_ASP_Cache.VaryByCustom" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%@ OutputCache Duration="7" VaryByParam="None" VaryByCustom="SSL"%>

    <div class="row">
       <h2>        
            Кэширование по настраиваемым параметрам
            <asp:Label ID="MessageLabel" ForeColor="Red" runat="server"></asp:Label>
        </h2>   
    </div>

</asp:Content>
