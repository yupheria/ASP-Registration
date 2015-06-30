<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_form.aspx.cs" Inherits="myRegistration.Registration_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0033CC;
        }
        .auto-style2 {
            width: 121px;
        }
        #Select1 {
            width: 120px;
        }
        .auto-style5 {
            width: 121px;
            height: 22px;
        }
        .auto-style8 {
            width: 364px;
        }
        .auto-style9 {
            width: 364px;
            height: 22px;
        }
        .auto-style10 {
            width: 372px;
        }
        .auto-style11 {
            width: 372px;
            height: 22px;
        }
    </style>
</head>
<body style="height: 499px; width: 626px;">
    <form id="form1" runat="server">
    <div class="auto-style1" style="text-align: left">
        
        Registration Form<br />
        <table style="width:69%;">
            <tr>
                <td class="auto-style2">Username:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Username is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter valid email address" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="You must be over 18" ForeColor="#FF3300" MinimumValue="18" MaximumValue="100" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True" Value="0">Select Country</asp:ListItem>
                        <asp:ListItem>NZ</asp:ListItem>
                        <asp:ListItem>AUS</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select a country" ForeColor="#FF3300" ControlToValidate="DropDownList1" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is required" ForeColor="#FF3300" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Pass:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Password should be the same" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Request" />
                    <asp:Button ID="Button2" runat="server" Text="Reset" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="myLabel"></asp:Label>
                </td>
                <td class="auto-style10"></td>
            </tr>
        </table>
        <br />
        <br />
        List of Users<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username], [email], [age], [country], [password] FROM [myUsers]"></asp:SqlDataSource>
        <br />
        </div>

    </form>
</body>
</html>
