using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Forumregister
    {
        private string UserName;
        private string Password;
        private string Fullname;
        private string Gender;
        private string Dob;
        private string Emailid;


        public string userName
        {
            get
            {
                return UserName;

            }
            set
            {
                UserName = value;
            }
        }
        public string password
        {
            get
            {
                return Password;


            }
            set
            {
                Password = value;
            }
        }
        public string fullname
        {
            get
            {
                return Fullname;


            }
            set
            {
                Fullname = value;
            }
        }
        public string gender
        {
            get
            {
                return Gender;


            }
            set
            {
                Gender = value;
            }
        }
        public string dob
        {
            get
            {
                return Dob;


            }
            set
            {
                Dob = value;
            }
        }
        public string emailid
        {
            get
            {
                return Emailid;


            }
            set
            {
                Emailid = value;
            }
        }
        public Forumregister(string UserName, string Password, string Fullname, string Gender, string Dob, string Emailid)
        {
            this.UserName = UserName;
            this.Password = Password;
            this.Fullname = Fullname;
            this.Gender = Gender;
            this.Dob = Dob;
            this.Emailid = Emailid;
        }
    }
}