using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using WebApplication1.Models;
using System.Configuration;
using System.Data;

namespace WebApplication1
{
    public class Class1
    {
      
        SqlConnection mcon = new SqlConnection(ConfigurationManager.ConnectionStrings["HRConnectionString"].ToString());

        public void deletestd(int em_Id)
        {
            try
            {

                mcon.Open();
                string sqlQ = "DELETE Employee where em_Id = '" + em_Id + "'";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
       
        public DataTable ValidateUser(User ob)
        {

            try
            {
                mcon.Open();
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from Employee where em_fname='" + ob.em_fname + "'and em_password='" + ob.em_password + "'", mcon);
                
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                
                return dt;
            }

            finally
            {
                mcon.Close();
            }

        }
        public DataTable fouremUser(User ob)
        {

            try
            {
                mcon.Open();
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from Forum_Registration where UserName='" + ob.UserName + "'and Password='" + ob.Password + "'", mcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                return dt;
            }

            finally
            {
                mcon.Close();
            }

        }
        public void Insert(Employer ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Employee(em_fname,em_lname,em_usertype,em_password,em_gender,em_mobile,em_address,em_email,em_dateofbirth,DepID) values ('" + ob.Em_fname + "','" + ob.Em_lname + "','" + ob.Em_usertype + "','" + ob.Em_password + "','" + ob.Em_gender + "','" + ob.Em_mobile + "','" + ob.Em_address + "','" + ob.Em_email + "','" + ob.Em_dateofbirth + "','" + ob.DepID + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        //public void updateEm(Employer ob)
        //{
        //    try
        //    {
        //        mcon.Open();
        //        string sqlQ = "update Employee set em_fname='" + ob.Em_fname + "',em_lname='" + ob.Em_lname + "',em_mobile='" + ob.Em_mobile + "',em_address='" + ob.Em_address + "',em_email='" + ob.Em_email + "',em_password='" + ob.Em_password + "' where em_Id ='" + ob.Em_id + "'";
        //        SqlCommand cmd = new SqlCommand(sqlQ, mcon);
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    finally
        //    {
        //        mcon.Close();
        //    } 

        //}
        public void Depadd(Department ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Department(DepID,DepName) values ('" + ob.departmentId + "','" + ob.departmentName + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void AddAtteand(EmAttendance ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Attendance(em_Id,Date,em_fname,DepID,Status) values (" + ob.Em_id + ",'" + ob.date + "','" + ob.em_fname + "','" + ob.DepID + "','" + ob.Status + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void isertlevae(Leave ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Leave(em_fname,em_email,leave_type,DepName,leave_to,leave_from,leave_reason,leave_days,em_Id) values('" + ob.Em_fname + "','" + ob.Em_email + "','" + ob.Leave_type + "','" + ob.DepName + "','" + ob.Leave_to + "','" + ob.Leave_from + "','" + ob.Leave_reason + "','" + ob.Leave_days + "','" + ob.Em_id + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void updatelevae(Leave ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "update Leave set em_Apporel='" + ob.Em_Apporel + "' where leave_Id =" + ob.Leave_Id + "";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }

        public void Foureminsert(Forumregister ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Forum_Registration(UserName,Password,fullname,gender,dob,emailid) values ('" + ob.userName + "','" + ob.password + "','" + ob.fullname + "','" + ob.gender + "','" + ob.dob + "','" + ob.emailid + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void Fouremmessage(Forumfeedback ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Forum(Title,Date,email,Message,UserName) values ('" + ob.title + "','" + ob.date + "','" + ob.email + "','" + ob.message + "','" + ob.userName + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void Course(Courses ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Course(Cousrse_ID,Title,Duratiom,em_Id) values ('" + ob.cousrse_ID + "','" + ob.title + "','" + ob.duratiom + "','" + ob.em_Id + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }
        public void findmemberById(string Id)
        {
           
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select DepName , leave_days from Leave where  em_Id ='" + Id + "'", mcon);
            mcon.Open();
            //sqldat = new SqlCommand(sqlQ, mcon);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                depname = dr[0].ToString();
                noleave = dr[1].ToString();
            }

            
            //sda.Fill(dt);
            //return dt;
        }

       
        
        
        //public void pubVariables()
        //{ }
        
            public static string depname = "";
            public static string noleave = "";

            public void findmemberByIdetails(int Id)
            {

                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select em_fname , em_email from Employee where  em_Id ='" + Id + "'", mcon);
                mcon.Open();
                //sqldat = new SqlCommand(sqlQ, mcon);
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    em_fname = dr[0].ToString();
                    em_email = dr[1].ToString();
                }


                //sda.Fill(dt);
                //return dt;
            }




            //public void pubVariables()
            //{ }

            public static string em_fname = "";
            public static string em_email = "";
        public DataTable  getDeptDtails()
            {
                
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select * from Department ", mcon);
                mcon.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                return dt;
            }
        public DataTable getemptDtails()
        {

            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from Employee ", mcon);
            mcon.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
      
        public void isertsalary(Salary ob)
        {
            try
            {
                mcon.Open();
                string sqlQ = "insert into Payroll(payID,em_Id,DepName,Date,Gross_Sal,EPF,ETF,Leavedays,Net_Sal) values('" + ob.PayID + "','" + ob.Em_Id + "','" + ob.depName + "','" + ob.date + "','" + ob.gross_Sal + "','" + ob.epf + "','" + ob.etf + "','" + ob.Leavesdays + "','" + ob.net_Sal + "')";
                SqlCommand cmd = new SqlCommand(sqlQ, mcon);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }
            finally
            {
                mcon.Close();
            }
        }

        public void AddInTime (string empID,string inTime , string ename , string date )
        {
            string sqlQ = "insert into Attendance(em_id,Date,em_fname,Timein) values  ('" + empID + "' ,'" + date + "' , '" + ename + "' , '" + inTime + "')";
            AddAttendtime(sqlQ);
        }

        public void AddOutTime(int eid, string date, string outTime)
        {
            string sqlQ = "Update Attendance set Timeout = '" + outTime + "' Where em_id = " + eid + "  and  Date ='" + date + "'";
            AddAttendtime(sqlQ);
        }


        public void AddAttendtime(string sql)
        {
            try
            {
                mcon.Open();
                SqlCommand cmd = new SqlCommand(sql, mcon);
                cmd.ExecuteNonQuery();

            }
            
            finally
            {
                mcon.Close();
            }
        }


        public void findmemberByIds(int Id)
        {

            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select em_fname from Employee where  em_Id ='" + Id + "'", mcon);
            mcon.Open();
            //sqldat = new SqlCommand(sqlQ, mcon);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                emfname = dr[0].ToString();
          
            }


            //sda.Fill(dt);
            //return dt;
        }




        //public void pubVariables()
        //{ }

        public static string emfname = "";
    
    }





    

       
}
 

      
   
