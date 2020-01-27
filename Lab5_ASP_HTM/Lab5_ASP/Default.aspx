<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab5_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

       Элемент HTMLinputReset <input id="Reset1" runat="server" type="reset" value="reset" />         
       <br>
       Элемент HTMLinputButton <input id="Button1" runat="server" type="button" value="button" onserverclick="OnClick"/>     
       <br>
       Элемент HTMLinputSubmit <input id="Submit1" runat="server" type="submit" value="submit" onserverclick="OnClick"/>     
       <br>
       Элемент HTMLinputFile <input id="File1" runat="server" type="file" />                          
       <br>
       Элемент HTMLinputText <input id="Text1" runat="server" type="text" onserverchange="OnChange" />                          
       <br>
       Элемент HTMLinputPassword <input id="Password1" runat="server" type="password" onserverchange="OnChange" />              
       <br>
       Элемент HTMLinputCheckBox <input id="Checkbox1" runat="server" type="checkbox" onserverchange="OnChange" />              
       <br>
       Элемент HTMLinputRadioButton <input id="Radio1" runat="server" type="radio" onserverchange="OnChange" name="123"/> 
                                    <input id="Radio2" runat="server" type="radio" onserverchange="OnChange" name="qwe"/> 
       <br>
       Элемент HTML TextArea <textarea id="TextArea1" runat="server" cols="20" rows="2" onserverchange="OnChange"></textarea>   
       <br>
       Элемент HTML Select<select id="Select1" runat="server" onserverchange="OnChange">
            <option>Опция 1</option>
            <option>Опция 2</option>
        </select>


    </div>

</asp:Content>
