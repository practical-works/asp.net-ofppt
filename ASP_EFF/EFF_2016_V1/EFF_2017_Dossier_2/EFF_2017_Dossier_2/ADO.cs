using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace EFF_2017_Dossier_2
{
    public static class  ADO
    {
        public static string connectionString = @"Data Source = .\AMBRATOLM_SQL; Initial Catalog = EFF_2016; Integrated Security = True";
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
