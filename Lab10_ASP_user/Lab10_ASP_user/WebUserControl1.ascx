<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Lab10_ASP_user.WebUserControl1" %>

<div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Фамилия"></asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Имя"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Отчество"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Дата рождения"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server" type="Date"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Пол"></asp:Label><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Ж</asp:ListItem>
            <asp:ListItem>М</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Факультет"></asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>ФИТ</asp:ListItem>
            <asp:ListItem>ПИМ</asp:ListItem>
            <asp:ListItem>ТОВ</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Группа"></asp:Label><br />
        <asp:TextBox ID="TextBox5" runat="server" type="number"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Год поступления"></asp:Label><br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Ввод"  OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Отказаться" OnClick="Button2_Click" />
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Введите фамилию" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Номер группы в пределах от 1 до 100" ControlToValidate="TextBox5" Display="None"  MinimumValue="1" MaximumValue="100" Type="Integer"></asp:RangeValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</div>