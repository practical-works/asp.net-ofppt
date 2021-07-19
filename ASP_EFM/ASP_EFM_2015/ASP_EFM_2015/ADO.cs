using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ASP_EFM_2015
{
    public static class ADO
    {
        public static string ConnectionString = WebConfigurationManager.ConnectionStrings["EFMConnectionString"].ConnectionString;
        public static SqlConnection Connection = new SqlConnection(ConnectionString);

        public static int ExecuteCommand(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, Connection);
            Connection.Open();
            int linesCount = command.ExecuteNonQuery();
            Connection.Close();
            return linesCount;
        }

        public static DataTable GetTable(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, Connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }
    }
}