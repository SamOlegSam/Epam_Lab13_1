﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab13_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="grad">

    <style>
        .grad {
            background-image: url(/images/background73.jpg);
            background-repeat: round;
        }
    </style>
    <form id="form1" runat="server" aria-sort="none">
    <h1 style="text-align: center">Продажа мониторов</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" EnableModelValidation="True" HorizontalAlign="Center" UseAccessibleHeader="False" Width="600px" AllowSorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" />
        <Columns>
            <asp:BoundField DataField="Код" HeaderText="Код" SortExpression="Код"/>
            <asp:BoundField DataField="Модель" HeaderText="Модель" SortExpression="Модель"/>
            <asp:BoundField DataField="Диагональ" HeaderText="Диагональ" SortExpression="Диагональ" />
            <asp:BoundField DataField="Страна" HeaderText="Страна" SortExpression="Страна" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
        </Columns>
            <EditRowStyle BackColor="#CCCCFF" />
            <EmptyDataRowStyle BorderColor="#CCCCFF" />
            <FooterStyle BorderColor="#CCCCFF" />
            <HeaderStyle BackColor="#CC99FF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Monitor1ConnectionString %>" ProviderName="<%$ ConnectionStrings:Monitor1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Display]" DeleteCommand="DELETE FROM [Display] WHERE [Код] = ? AND (([Модель] = ?) OR ([Модель] IS NULL AND ? IS NULL)) AND (([Диагональ] = ?) OR ([Диагональ] IS NULL AND ? IS NULL)) AND (([Страна] = ?) OR ([Страна] IS NULL AND ? IS NULL)) AND (([Цена] = ?) OR ([Цена] IS NULL AND ? IS NULL))" UpdateCommand="UPDATE [Display] SET [Модель] = ?, [Диагональ] = ?, [Страна] = ?, [Цена] = ? WHERE [Код] = ? AND (([Модель] = ?) OR ([Модель] IS NULL AND ? IS NULL)) AND (([Диагональ] = ?) OR ([Диагональ] IS NULL AND ? IS NULL)) AND (([Страна] = ?) OR ([Страна] IS NULL AND ? IS NULL)) AND (([Цена] = ?) OR ([Цена] IS NULL AND ? IS NULL))" OnSelecting="SqlDataSource1_Selecting" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [Display] ([Код], [Модель], [Диагональ], [Страна], [Цена]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Код" Type="Int32" />
                <asp:Parameter Name="original_Модель" Type="String" />
                <asp:Parameter Name="original_Модель" Type="String" />
                <asp:Parameter Name="original_Диагональ" Type="String" />
                <asp:Parameter Name="original_Диагональ" Type="String" />
                <asp:Parameter Name="original_Страна" Type="String" />
                <asp:Parameter Name="original_Страна" Type="String" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Код" Type="Int32" />
                <asp:Parameter Name="Модель" Type="String" />
                <asp:Parameter Name="Диагональ" Type="String" />
                <asp:Parameter Name="Страна" Type="String" />
                <asp:Parameter Name="Цена" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Модель" Type="String" />
                <asp:Parameter Name="Диагональ" Type="String" />
                <asp:Parameter Name="Страна" Type="String" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter Name="original_Код" Type="Int32" />
                <asp:Parameter Name="original_Модель" Type="String" />
                <asp:Parameter Name="original_Модель" Type="String" />
                <asp:Parameter Name="original_Диагональ" Type="String" />
                <asp:Parameter Name="original_Диагональ" Type="String" />
                <asp:Parameter Name="original_Страна" Type="String" />
                <asp:Parameter Name="original_Страна" Type="String" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
                <asp:Parameter Name="original_Цена" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        

    <asp:Table ID="Table1" runat="server" width="600" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Добавить запись" Width="200px" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox5" runat="server" width="120"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox6" runat="server" width="80"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox7" runat="server" width="80"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox8" runat="server" width="80"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

        

        <br />

        

</form>


</body>
</html>
