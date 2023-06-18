using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace _1270381.App_Code
{
    public class TeacherRepo
    {
        SqlConnection con;
        public TeacherRepo()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
        }
        public IList<Teacher>Get()
        {
            using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Teachers", con))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt.AsEnumerable().Select(t => new Teacher
                {
                    TeacherId = t.Field<int>("TeacherId"),
                    TeacherName = t.Field<string>("TeacherName"),
                    email = t.Field<string>("email"),
                    phone = t.Field<string>("phone")
                }).ToList();
            }
        }
        public void Insert(Teacher t) 
        {

            using (SqlCommand cmd = new SqlCommand("Insert into Teachers Values (@n, @p, @e)", con))
            {
                
                cmd.Parameters.AddWithValue("@n", t.TeacherName);
                cmd.Parameters.AddWithValue("@p", t.phone);
                cmd.Parameters.AddWithValue("@e", t.email);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void update (Teacher t) 
        {
            using (SqlCommand cmd = new SqlCommand("update Teachers set TeacherName=@n, phone=@p, email=@e where TeacherId=@i", con))
            {
                cmd.Parameters.AddWithValue("@n", t.TeacherName);
                cmd.Parameters.AddWithValue("@p", t.phone);
                cmd.Parameters.AddWithValue("@e", t.email);
                cmd.Parameters.AddWithValue("@i", t.TeacherId);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Delete (Teacher t)
        {

            using (SqlCommand cmd = new SqlCommand("delete Teachers where TeacherId=@i", con))
            {
                cmd.Parameters.AddWithValue("@i", t.TeacherId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}