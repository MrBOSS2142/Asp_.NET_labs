<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab6_ASP._Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div>

            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" onactiveviewchanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <br>
                    <br>
                    <asp:Label ID="Label1" runat="server" Text="View1"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 26px" Width="222px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" style="margin-left: 50px" Text="Button 1" OnClick="Button1_Click" />
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderWidth="1px" CancelButtonText="Остановить" DisplayCancelButton="True"
                        FinishCompleteButtonText="Подтвердить" FinishPreviousButtonText="Назад" Font-Names="Verdana" Font-Size="0.8em" Height="229px" StartNextButtonText="Дальше"
                        StepNextButtonText="Дальше" StepPreviousButtonText="Назад" Width="712px" onactivestepchanged="Wizard1_ActiveStepChanged" onfinishbuttonclick="Wizard1_FinishButtonClick"
                        BorderStyle="Solid" OnCancelButtonClick="Wizard1_CancelButtonClick">
                        <StepStyle Font-Size="0.8em" ForeColor="#5D7B9D" BorderWidth="0px" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Ваши данные">
                                <div style="
                                    height: 100%;
                                    background: red;
                                    background-image: url(Content/Images/2.jpg); ">
                                    <br />
                                    <br />

                                    <asp:Table ID="Table1" runat="server" Height="89px" style="margin-left: 69px; margin-top: 0px;" Width="272px">
                                        <asp:TableRow runat="server">
                                            <asp:TableCell runat="server">
                                                <asp:Label ID="Label4" runat="server" Text="Фамилия" Font-Size="Medium" Width="100px" Font-Names="Courier New" Height="20px" ForeColor="#ffffff"></asp:Label>

                                            </asp:TableCell>
                                            <asp:TableCell runat="server">
                                                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Font-Size="16px" style="margin-left: 0px" Width="180px"></asp:TextBox>

                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow runat="server">
                                            <asp:TableCell runat="server">
                                                <asp:Label ID="Label5" runat="server" Text="Имя" Font-Size="Medium" Width="100px" Font-Names="Courier New" Height="20px" ForeColor="#ffffff"></asp:Label>

                                            </asp:TableCell>
                                            <asp:TableCell runat="server">
                                                <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Font-Size="16px" Width="180px" Height="20px"></asp:TextBox>

                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" title="Дата рождения">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" Caption="Мой календарь" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" onselectionchanged="Calendar1_SelectionChanged" SelectionMode="DayWeek" Width="330px" style="margin-left: 60px">
                                    <SelectedDayStyle BackColor="#615FD2" ForeColor="White" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                    <TitleStyle BackColor="#615FD2" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                </asp:Calendar>
                            </asp:WizardStep>

                            <asp:WizardStep runat="server" title="Ваш стиль музыки">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Names="Courier New" Font-Size="Medium" Width="379px" style="margin-left: 60px">
                                    <asp:ListItem>Рок</asp:ListItem>
                                    <asp:ListItem>Поп</asp:ListItem>
                                    <asp:ListItem>Кантри</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Любимые фильмы">

                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Names="Courier New" Font-Size="Medium" RepeatDirection="Vertical" style="margin-left: 60px">
                                    <asp:ListItem>Побег из шоушенка</asp:ListItem>
                                    <asp:ListItem>Зеленая миля</asp:ListItem>
                                    <asp:ListItem>Звездные войны</asp:ListItem>
                                    <asp:ListItem>Титаник</asp:ListItem>
                                </asp:CheckBoxList>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="В какую страну хотите поехать?">
                                <asp:ListBox ID="ListBox1" runat="server" Height="92px" Width="223px" style="margin-left: 90px">
                                    <asp:ListItem>Италия</asp:ListItem>
                                    <asp:ListItem>Германия</asp:ListItem>
                                    <asp:ListItem>Словения</asp:ListItem>
                                    <asp:ListItem>Чехия</asp:ListItem>
                                    <asp:ListItem>США</asp:ListItem>
                                    <asp:ListItem>Испания</asp:ListItem>
                                    <asp:ListItem>Австралия</asp:ListItem>
                                </asp:ListBox>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Подтверждение">
                                <asp:Label ID="Finish" runat="server" Font-Names="Courier New" Font-Size="Medium"></asp:Label>
                            </asp:WizardStep>
                        </WizardSteps>
                        <SideBarButtonStyle BackColor="#615FD2" Font-Names="Verdana" ForeColor="White" BorderWidth="0px" />
                        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                        <SideBarStyle BackColor="#615FD2" Font-Size="0.9em" VerticalAlign="Top" BorderWidth="0px" />
                        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                    </asp:Wizard>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br>
                    <br>
                    <asp:Label ID="Label2" runat="server" Text="View1"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 26px" Width="222px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" style="margin-left: 50px" Text="Button 2" OnClick="Button2_Click" />
                    <br>
                    <br>
                    <br>
                    <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ImageSet="Arrows" OnTreeNodeCheckChanged="TreeView1_TreeNodeCheckChanged">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="First">
                                <asp:TreeNode ShowCheckBox="True" Text="1.1" Value="1.1" />
                                <asp:TreeNode ShowCheckBox="True" Text="1.2" Value="1.2" />
                                <asp:TreeNode ShowCheckBox="True" Text="1.3" Value="1.3" />
                            </asp:TreeNode>
                            <asp:TreeNode Text="Second">
                                <asp:TreeNode ShowCheckBox="True" Text="2.1" Value="2.1" ToolTip="Подсказка 1" />
                                <asp:TreeNode Text="2.2" ToolTip="Подсказка 2" Value="2.2" />
                                <asp:TreeNode Text="2.3" Value="2.3" ToolTip="Подсказка 3" />
                            </asp:TreeNode>
                            <asp:TreeNode Text="Third">
                                <asp:TreeNode ShowCheckBox="True" Text="3.1" Value="3.1" />
                                <asp:TreeNode ImageUrl="~/Content/Images/stop.png" Text="3.2" ToolTip="Подсказка 3" Value="3.2" />
                                <asp:TreeNode Text="3.3" Value="3.3" />
                            </asp:TreeNode>
                            <asp:TreeNode Text="Four" Value="Four"></asp:TreeNode>
                            <asp:TreeNode Expanded="False" Text="Five" Value="Five"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <br>
                    <br>
                    <asp:Label ID="Label3" runat="server" Text="View1"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 26px" Width="222px"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" style="margin-left: 50px" Text="Button 3" OnClick="Button3_Click" />
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <div style="width: 394px; height: 59px">

                        <asp:Menu ID="Menu1" runat="server" BackColor="#615FD2" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#FFFFFF" onmenuitemclick="Menu1_MenuItemClick"  StaticSubMenuIndent="20px">
                            <StaticMenuStyle HorizontalPadding="40px" />
                            <StaticSelectedStyle BackColor="#4EA6FF" />
                            <StaticMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" />
                            <DynamicHoverStyle BackColor="#ffffff" ForeColor="green" />
                            <DynamicMenuStyle BackColor="#837F5A" />
                            <DynamicSelectedStyle BackColor="#FFCC66" />
                            <DynamicMenuItemStyle HorizontalPadding="25px" VerticalPadding="15px" />
                            <StaticHoverStyle BackColor="#ffffff" ForeColor="green" />
                            <Items>
                                <asp:MenuItem Text="Животное" ToolTip="подсказка A" Value="A">
                                    <asp:MenuItem Text="Лошадка" ToolTip="Посказка Лошадка" Value="Лошадка"></asp:MenuItem>
                                    <asp:MenuItem Text="Котик" Value="Котик">
                                        <asp:MenuItem Text="Рыженький" Value="Рыженький"></asp:MenuItem>
                                        <asp:MenuItem Text="Черненький" Value="Черненький"></asp:MenuItem>
                                        <asp:MenuItem Text="Рябенький" Value="Рябенький"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Собачка" Value="Собачка"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Меню" Value="Меню">
                                    <asp:MenuItem Text="Пункт1" Value="Пункт1">
                                        <asp:MenuItem Text="Подпункт1" Value="Подпункт1"></asp:MenuItem>
                                        <asp:MenuItem Text="Подпункт2" Value="Подпункт2"></asp:MenuItem>
                                    </asp:MenuItem>
                                    <asp:MenuItem Text="Пункт2" Value="Пункт2"></asp:MenuItem>
                                    <asp:MenuItem Text="Пункт3" Value="Пункт3"></asp:MenuItem>
                                    <asp:MenuItem Text="Пункт4" Value="Пункт4"></asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                        </asp:Menu>

                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="SwitchView" />

    </asp:Content>