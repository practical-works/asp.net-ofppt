using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace EFF_2017_Dossier_3
{
    public static class ADO
    {
        public static string connectionString = WebConfigurationManager.ConnectionStrings["EFF_2016ConnectionString"].ConnectionString;
        public static SqlConnection connection = new SqlConnection(connectionString);

        public static int ExecuteCommand(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, connection);
            connection.Open();
            int affectedLinesCount = command.ExecuteNonQuery();
            connection.Close();
            return affectedLinesCount;
        }

        public static DataTable GetTable(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }
    }
}