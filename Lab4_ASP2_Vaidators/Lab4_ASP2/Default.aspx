<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab4_ASP2._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--RequiredFieldValidator-->
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="Label">RequiredFieldValidator</asp:Label>
            <br>
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="g1"></asp:TextBox>
            <br>
            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="g1">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Первый</asp:ListItem>
                <asp:ListItem>Второй</asp:ListItem>
            </asp:DropDownList>
            <br>
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="g1"/>
            <br>
            <asp:RequiredFieldValidator ControlToValidate="TextBox1"
                ID="RequiredFieldValidator1" 
                runat="server" 
                ErrorMessage="RequiredFieldValidator"
                ValidationGroup="g1"
                ForeColor="Red">Напишите текст</asp:RequiredFieldValidator>
            <br>
            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" 
                ID="RequiredFieldValidator2"
                runat="server" 
                ErrorMessage="RequiredFieldValidator" 
                ValidationGroup="g1"
                ForeColor="Red">Выберите элемент из списка</asp:RequiredFieldValidator>
        </div>
    </div>
    <!--RangeValidator-->
    <div class="row">
      <div class="col-md-4">
        <asp:Label ID="Label2" runat="server" Text="Label">RangeValidator</asp:Label>
            <br>
        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="g2"></asp:TextBox>
        <br>
        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="g2"></asp:TextBox>
        <br>
        <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="g2"/>
        <br>
        <asp:RangeValidator ControlToValidate="TextBox2" 
            ValidationGroup="g2"
            ID="RangeValidator1" 
            runat="server"
            ErrorMessage="RangeValidator"
            ForeColor="Green" 
            MinimumValue="0"
            MaximumValue="121"
            Type="Integer">Предел от 0 до 121</asp:RangeValidator>
        <br>
        <asp:RangeValidator ControlToValidate="TextBox3"
            ValidationGroup="g2" 
            ID="RangeValidator2"
            runat="server"
            ErrorMessage="RangeValidator"
            ForeColor="Green"
            MinimumValue="01.01.1970"
            MaximumValue="31.12.2019"
            Type="Date">От 01.01.1970 до 31.12.2019</asp:RangeValidator>
      </div>
    </div>
    <!--CompareValidator-->
    <div class="row">
      <div class="col-md-4">
        <asp:Label ID="Label3" runat="server" Text="Label">CompareValidator</asp:Label>
        <br>
        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="g3"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="g3"></asp:TextBox>
        <br>
        <asp:Button ID="Button3" runat="server" Text="Button" ValidationGroup="g3"/>
        <br>
        <asp:CompareValidator ID="CompareValidator1" 
            runat="server" 
            ErrorMessage="CompareValidator"
            ValidationGroup="g3" 
            ControlToValidate="TextBox4"
            ControlToCompare="TextBox5"
            Operator="LessThan" 
            Type="Date" 
            ForeColor="Blue">Слева дата больше чем справа</asp:CompareValidator>
      </div>
    </div>
    <!--RegularExpressionValidator-->
    <div class="row">
        <asp:Label ID="Label4" runat="server" Text="Label">RegularExpressionValidator</asp:Label>
        <br>
      <div class="col-md-4">
        <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="g4" ControlToValidate="TextBox6"></asp:TextBox>
        <br>
        <asp:Button ID="Button4" runat="server" Text="Button" ValidationGroup="g4"/>
        <br>
          <asp:RegularExpressionValidator 
              ID="RegularExpressionValidator1"
              runat="server" 
              ErrorMessage="RegularExpressionValidator"
              ControlToValidate="TextBox6" 
              ValidationGroup="g4"
              ValidationExpression="^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$"
              ForeColor="Red">Ввведен некорректный эмэйл</asp:RegularExpressionValidator>
      </div>
    </div>
    <!--CustomValidator-->
    <div class="row">
        <asp:Label ID="Label5" runat="server" Text="Label">CustomValidator</asp:Label>
        <br>
      <div class="col-md-4">
        <asp:TextBox ID="TextBox7" runat="server" ValidationGroup="g5" ControlToValidate="TextBox6"></asp:TextBox>
        <br>
        <asp:Button ID="Button5" runat="server" Text="Button" ValidationGroup="g5"/>
        <br>
        <asp:CustomValidator ID="CustomValidator1" 
            ValidationGroup="g5"
            runat="server"
            ErrorMessage="CustomValidator"
            ControlToValidate="TextBox7"
            ClientValidationFunction="MyFun" 
            OnServerValidate="CustomValidator1_ServerValidate">Число - не простое</asp:CustomValidator>
        <script>
            function MyFun(source, num) {
                for (var i = 2; i < num.Value; i++)
                    if (num.Value % i == 0) {
                        num.IsValid = false;
                        return;
                    }
                    else {
                        num.IsValid = true;
                    }
            }
        </script>
      </div>
    </div>

</asp:Content>
