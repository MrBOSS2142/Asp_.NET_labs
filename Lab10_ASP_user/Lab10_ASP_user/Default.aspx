<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab10_ASP_user._Default" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="ssl" TagName="WebUserControl1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <ssl:WebUserControl1 runat="server" id="WebUserControl1"/>
    </div>
</asp:Content>
