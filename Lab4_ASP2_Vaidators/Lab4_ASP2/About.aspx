<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lab4_ASP2.About" %>


    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <br>
        <br>
        <table>
            <tr>
                <td>ФИО</td>
                <td>
                    <asp:TextBox ID="TextBoxFIO"
                        runat="server"
                        ValidationGroup="group1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Дата рождения</td>
                <td>
                    <asp:TextBox ID="TextBoxDate"
                        runat="server"
                        ValidationGroup="group1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBoxEmail" 
                        runat="server" 
                        ValidationGroup="group1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Сумма</td>
                <td>
                    <asp:TextBox ID="TextBoxCount"
                        runat="server"
                        ValidationGroup="group1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Пароль</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword"
                        TextMode="Password"
                        runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        </br>
        </br>
        <asp:Button ID="Button1"
            runat="server"
            Text="Отправить" ValidationGroup="group1" />
        </br>
        </br>

<%--        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server"
            ErrorMessage="Заполните поле с ФИО" 
            ControlToValidate="TextBoxFIO" 
            ValidationGroup="group1" 
            ForeColor="Red" 
            Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
            runat="server" 
            ErrorMessage="Заполните поле с датой рождения"
            ControlToValidate="TextBoxDate" 
            ValidationGroup="group1"
            ForeColor="Red"
            Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server"
            ErrorMessage="Заполните поле с Email"
            ControlToValidate="TextBoxEmail"
            ValidationGroup="group1"
            ForeColor="Red" 
            Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
            runat="server" 
            ErrorMessage="Заполните поле с суммой" 
            ControlToValidate="TextBoxCount"
            ValidationGroup="group1" 
            ForeColor="Red" 
            Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
            runat="server"
            ErrorMessage="Заполните поле с паролем" 
            ControlToValidate="TextBoxPassword"
            ValidationGroup="group1"
            ForeColor="Red"
            Display="None"></asp:RequiredFieldValidator>--%>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        runat="server"
        ErrorMessage="Не верный формат поля ФИО"
        ControlToValidate="TextBoxFIO" 
        ValidationGroup="group1" 
        ValidationExpression="^[А-Я][а-я]+ [А-Я][а-я]+ [А-Я][а-я]+$" 
        ForeColor="Red"
        Display="None"></asp:RegularExpressionValidator>


        <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
            ControlToValidate="TextBoxPassword"
            ErrorMessage="Длина меньше 7 символов"
            ValidationGroup="group1"
            runat="server" 
            ValidationExpression="^([A-Za-z0-9]{7,})$" Display="None"></asp:RegularExpressionValidator>

        <asp:CustomValidator 
            ControlToValidate="TextBoxPassword"
            ErrorMessage="Есть повторяющиеся символы"
            ValidationGroup="group1" 
            ID="CustomValidator1" 
            runat="server"
            OnServerValidate="CustomValidator1_ServerValidate"
            Display="None"
            ClientValidationFunction="MyFun1">Есть повторяющиеся символы</asp:CustomValidator>


        <script>
            function MyFun1(source, str) {
                var s = 0;
                for (var i = 0; i < str.Value.Length; i++)
                {
                    for (var j = 0; j < str.Value.Length; j++)
                    {
                        if (str.Value[i] == str.Value[j]) {
                            s++;
                        }
                        if (s == 2) {
                            str.IsValid = false;
                            return;
                        }
                    }
                    s = 0;
                }
                str.IsValid = true;
            }
        </script>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
            runat="server"
            ErrorMessage="Введен некорректный эмэйл"
            ControlToValidate="TextBoxEmail"
            ValidationGroup="group1" 
            ValidationExpression="^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$"
            ForeColor="Red" 
            Display="None"></asp:RegularExpressionValidator>

        <asp:RangeValidator ID="RangeValidator1"
            ValidationGroup="group1"
            runat="server"
            ErrorMessage="Сумма должна быть в пределе от 1000 до 2000"
            ControlToValidate="TextBoxCount"
            MaximumValue="2000" 
            MinimumValue="1000" 
            Type="Integer"
            ForeColor="Red" 
            Display="None"></asp:RangeValidator>

        <asp:RangeValidator ID="RangeValidator2" 
            ValidationGroup="group1" 
            runat="server" 
            ErrorMessage="Похоже вы еще не родились)"
            ControlToValidate="TextBoxDate" 
            MinimumValue="01.01.1900" 
            Type="Date"
            ForeColor="Red"
            Display="None"></asp:RangeValidator>

        <asp:ValidationSummary ID="ValidationSummary2" 
            runat="server"
            ValidationGroup="group1"
            ForeColor="Red" />
    </asp:Content>
