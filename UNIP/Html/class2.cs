using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace UNIP.Html
{
    public class class2 : ApiController
    {
        SqlCommand cmd;
        SqlConnection cn;
        SqlDataReader dr;
        DataTable dt;
        public class2()
        {
            cn = new SqlConnection(@"Data Source=DESKTOP-80B2AHJ\SQLSERVER14;Initial Catalog=projeto;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cn.Close();
        }


        public bool loginuser(String nome, String chave)
        {
            try
            {
                cmd.CommandText = String.Format("select count(*) from pessoa where nome = '{0}' and chave = '{1}'", nome, chave);
                cn.Open();
                int value = int.Parse(cmd.ExecuteScalar().ToString());
                cn.Close();
                if (value > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {

                return false;
            }
        }
    }
}