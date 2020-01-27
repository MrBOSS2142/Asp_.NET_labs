<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab2_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
       <asp:Button ID="button1" Text="button" runat="server" OnClick="button1_Click"/>
    </div>

    <div>
        <asp:TextBox ID="textbox" Text="textbox" runat="server"/>
    </div>

    <div>
        <asp:Label ID="label" runat="server">label</asp:Label>
    </div>

        <div>
        <asp:Label ID="Label1" runat="server">label</asp:Label>
    </div>

    <div>
       <asp:CheckBox ID="checkBoxAuto" Text="checkBox_Auto" AutoPostBack="true" runat="server" OnCheckedChanged="checkBoxAuto_CheckedChanged"/>
    </div>

    <div>
       <asp:CheckBox ID="checkBoxNotAuto" Text="checkBox_NotAuto" AutoPostBack="false" runat="server" OnCheckedChanged="checkBoxNotAuto_CheckedChanged"/>
    </div>
      
    <div>
       <asp:Button ID="button2" Text="Инфо" runat="server" OnClick="button2_Click"/>
    </div>
  
</asp:Content>
