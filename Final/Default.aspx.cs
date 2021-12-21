using BeanTest.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeanTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        [System.Web.Services.WebMethod]
        public static string GetScooter(string lat, string longi, string distance, string count)
        {

            string Json = "";
            using (SqlConnection conn = new SqlConnection(Common.GetConnectionString()))
            {
                conn.Open();

                SqlCommand cmd3 = new SqlCommand("spGetClosetScooters", conn);
                cmd3.Connection = conn;
                cmd3.CommandType = CommandType.StoredProcedure;


                cmd3.Parameters.Add("@command", SqlDbType.VarChar).Value = "G";
                cmd3.Parameters.Add("@curlat", SqlDbType.Decimal).Value = lat;
                cmd3.Parameters.Add("@curlong", SqlDbType.Decimal).Value = longi;
                cmd3.Parameters.Add("@distinct", SqlDbType.Int).Value = distance;
                cmd3.Parameters.Add("@count", SqlDbType.Int).Value = count;

                using (SqlDataReader dreader = cmd3.ExecuteReader())
                {
                    
                    Json = sqlDatoToJson(dreader);

                }

                conn.Close();


            }

            return Json;
        }


        private static String sqlDatoToJson(SqlDataReader dataReader)
        {
            var dataTable = new DataTable();
            dataTable.Load(dataReader);
            string JSONString = string.Empty;
            JSONString = JsonConvert.SerializeObject(dataTable);
            return JSONString;
        }

        
    }
}