using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace EFF_2016_Dossier_2
{
    public static class ADO
    {
        public static string connectionString = @"Data Source = .\AMBRATOLM_SQL; Initial Catalog = EFF_2016_V2; Integrated Security = True;";
        public static SqlConnection connection = new SqlConnection(connectionString);


        public static int ExecuteCommand(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, connection);
            connection.Open();
            int affectedLinesCount = command.ExecuteNonQuery();
            connection.Close();
            return affectedLinesCount;
        }
        public static int ExecuteCommand(SqlCommand command)
        {
            command.Connection = connection;
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

        public static int SetTable(string commandText, DataTable table)
        {
            SqlCommand command = new SqlCommand(commandText, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(adapter);
            return adapter.Update(table);
        }

        public static string GetValue(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, connection);
            connection.Open();
            string value = command.ExecuteScalar().ToString();
            connection.Close();
            return value;
        }
    }
}
