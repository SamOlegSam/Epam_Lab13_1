using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab13_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string str = @"Provider=Microsoft.Jet.OLEDB.4.0; Data Source=D:\Projects\Lab13-1\Lab13-1\Lab13-1\AppData\Monitor1.mdb";
        private OleDbConnection oledbconnection = null;
        private OleDbCommandBuilder oledbbuilder = null;
        private OleDbDataAdapter oledbdataadapter = null;
        private DataSet dataset = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LoadData()
        {

        }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text == "")
            {
                TextBox5.BorderColor = Color.Red;
            }
            if (TextBox6.Text == "")
            {
                TextBox6.BorderColor = Color.Red;
            }
            if (TextBox7.Text == "")
            {
                TextBox7.BorderColor = Color.Red;
            }
            if (TextBox8.Text == "")
            {
                TextBox8.BorderColor = Color.Red;
            }
            else
            {
                oledbconnection = new OleDbConnection(str);
                oledbconnection.Open();
                OleDbCommand command = new OleDbCommand($"INSERT INTO Display (Модель, Диагональ, Страна, Цена) Values (@a1, @a2, @a3, @a4)", oledbconnection);
                command.Parameters.AddWithValue("@a1", TextBox5.Text);
                command.Parameters.AddWithValue("@a2", TextBox6.Text);
                command.Parameters.AddWithValue("@a3", TextBox7.Text);
                command.Parameters.AddWithValue("@a4", Convert.ToDouble(TextBox8.Text));
                command.ExecuteNonQuery();
                oledbconnection.Close();

                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                Server.TransferRequest(Request.Url.AbsolutePath, false);
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}