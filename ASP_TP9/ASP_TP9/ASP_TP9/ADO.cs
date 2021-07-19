using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ASP_TP9
{
    public static class ADO
    {
        public static SqlConnection Connection = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["ASP_TP9ConnectionString"].ConnectionString);

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