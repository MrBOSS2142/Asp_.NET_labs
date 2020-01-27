<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lab6_ASP.About" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" onactiveviewchanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                Все баннеры <br>
                <asp:AdRotator ID="AdRotator" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Баннеры из группы b1 <br>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" KeywordFilter="b1" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Баннеры из группы b2 <br>
                <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/App_Data/AdRotator.xml" KeywordFilter="b2" />
            </asp:View>
        </asp:MultiView>
        <asp:Button ID="Button4" runat="server" onclick="Button_Click" Text="Сменить"/>
    </asp:Content>