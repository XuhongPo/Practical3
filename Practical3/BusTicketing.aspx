<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 76px;
        }
        .auto-style4 {
            width: 100%;
            height: 462px;
        }
        .auto-style5 {
            height: 23px;
            width: 3px;
        }
    </style>
</head>
<body style="height: 325px">
    <form id="form1" runat="server">
&nbsp;<table class="auto-style4">
            <tr>
                <td colspan="3" style="text-align: center">ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="lblTime" runat="server" Text="[lblTime]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Postback" />
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Date :</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                    <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Adult</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Child</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">From</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlFrom" runat="server" Height="16px" OnSelectedIndexChanged="ddlFrom_SelectedIndexChanged" Width="119px">
                        <asp:ListItem>Select From</asp:ListItem>
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem>Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Destination</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                        <asp:ListItem>Select To</asp:ListItem>
                        <asp:ListItem>ButterWorth</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ticket Price</td>
                <td class="auto-style5">:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtPrice" runat="server" BorderStyle="Dotted" Enabled="False" OnTextChanged="txtPrice_TextChanged"></asp:TextBox>
                    <br />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblError" runat="server" Text="[lblError]"></asp:Label>
        <p>
            <asp:Button ID="btnBookticket" runat="server" Text="Book Ticket" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="txtCancel" runat="server" OnClick="Button2_Click" Text="Cancel" />
        </p>
    </form>
</body>
</html>
