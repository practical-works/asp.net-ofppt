using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ASP_TP8_Ex2
{
    public static class ADO
    {
        private static string connectionString = WebConfigurationManager.ConnectionStrings["MesAchats_ConnectionString"].ConnectionString;
        public static SqlConnection Connection = new SqlConnection(connectionString);

        public static void Connect()
        {
            if (Connection.State != ConnectionState.Open)
                Connection.Open();
        }
        public static void Disconnect()
        {
            if (Connection.State != ConnectionState.Closed)
                Connection.Close();
        }

        public static SqlDataReader GetReader(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, Connection);
            Connect();
            SqlDataReader reader = command.ExecuteReader();
            return reader;
        }

        public static int CommandExecute(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, Connection);
            Connect();
            int affectedLinesCount = command.ExecuteNonQuery();
            Disconnect();
            return affectedLinesCount;
        }

        public static object GetScalar(string commandText)
        {
            SqlCommand command = new SqlCommand(commandText, Connection);
            Connect();
            object obj = command.ExecuteScalar();
            Disconnect();
            return obj;
        }
    }
}