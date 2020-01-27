<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab9_Asp_Ajax._Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" OnAsyncPostBackError="ScriptManager_OnAsyncPostBackError1">
        </asp:ScriptManager>

        <script>
            var pm = Sys.WebForms.PageRequestManager.getInstance();
            pm.add_initializeRequest(InitializeRequest);
            function InitializeRequest(sender, args) {
                if (pm.get_isInAsyncPostBack()) {
                    args.set_cancel(true);
                }
            }
            function AbortPostBack() {
                alert("AbortPostBack");
                if (pm.get_isInAsyncPostBack()) {
                    pm.abortPostBack();
                }
            }
        </script>

        <div class="row">
            <asp:Label ID="Label2" runat="server" Text="1"></asp:Label>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="="></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="*" onclick="Button1_Click" />
                    <br />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button4" EventName="" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:Button ID="Button4" runat="server" Text="Триггер на умножить" onclick="Button1_Click" />
            <asp:Button ID="Button5" runat="server" Text="Кнопка без тригера" onclick="Button1_Click" />

            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="2"></asp:Label>

            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label4" runat="server" Text="CheckBox"></asp:Label>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Check" onclick="Button2_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="3"></asp:Label>

            <br />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label5" runat="server" Text="Rad1"></asp:Label>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gr1" />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Rad2"></asp:Label>
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gr1" />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="CheckRad" onclick="Button3_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Timers"></asp:Label>

            <br />
            <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:Timer ID="Timer2" runat="server" Interval="2000" OnTick="Timer2_Tick"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>

            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Элемент с задержкой 5 сек"></asp:Label>

            <br />

            <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="Button6" runat="server" Text="Придет через 5 сек" onclick="Button6_Click" />
                    <br />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button4" EventName="" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel6">
                <ProgressTemplate>
                    Server call...
                    <img src="giphy.gif">
                    <br />
                    <input type="button" id="but" onclick="AbortPostBack();" value="Cancel">
                </ProgressTemplate>
            </asp:UpdateProgress>
            <br />

            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
    </asp:Content>