using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Net.Mail;
using System.Net;
namespace Roshan.DAL
{
    
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["RMConnectionString"].ConnectionString;

        public int CheckLogin(String Name, String pass)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkLogin ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@username"].Value = Name;
                cmd.Parameters["@password"].Value = pass;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@out"].Value); //convert to output parameter to interger format

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }






        public void Message(String Name, String email,String contact, String message)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getMessage ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@contact", SqlDbType.Char, 11);
                cmd.Parameters.Add("@text", SqlDbType.VarChar, 400);

                // set parameter values
                cmd.Parameters["@name"].Value = Name;
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@contact"].Value = contact;
                cmd.Parameters["@text"].Value = message;

                cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

        }

        public DataTable Search(String talent,String gender,string al, string au)
        {


            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("search ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@talent", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@gender", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@ageL", SqlDbType.Int);
                cmd.Parameters.Add("@ageU", SqlDbType.Int);
                
                // set parameter values
                cmd.Parameters["@talent"].Value = talent;
                cmd.Parameters["@gender"].Value = gender;
                cmd.Parameters["@ageL"].Value = al;
                cmd.Parameters["@ageU"].Value = au;
               
                SqlDataReader dr = cmd.ExecuteReader();
               
                dt.Load(dr);
                
                //cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return dt;
        }


        public DataTable Showall()
        {


            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("showall ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader dr = cmd.ExecuteReader();

                dt.Load(dr);

                //cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return dt;
        }

        public DataTable videos()
        {


            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("videos ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader dr = cmd.ExecuteReader();

                dt.Load(dr);

                //cmd.ExecuteNonQuery();
                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return dt;
        }





    }
}