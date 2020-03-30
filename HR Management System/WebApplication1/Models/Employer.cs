using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Employer
    {
        private int em_id;
        private string em_fname;
        private string em_lname;
        private string em_usertype;
        private string em_password;
        private string em_gender;
        private string em_mobile;
        private string em_address;
        private string em_email;
        private string em_dateofbirth;
        private string depID;
        
        public int Em_id
        {
            get
            {
                return em_id;

            }
            set
            {
                em_id = value;
            }
        }
        public string Em_fname
        {
            get
            {
                return em_fname;

            }
            set
            {
                em_fname = value;
            }
        }
        public string Em_lname
        {
            get
            {
                return em_lname;


            }
            set
            {
                em_lname = value;
            }
        }
        public string Em_usertype
        {
            get
            {
                return em_usertype;


            }
            set
            {
                em_usertype = value;
            }
        }
         public string Em_password
        {
            get
            {
                return em_password;


            }
            set
            {
                em_password = value;
            }}
         public string Em_gender
        {
            get
            {
                return em_gender;


            }
            set
            {
                em_gender = value;
            }
               }
        public string Em_mobile
        {
            get
            {
                return em_mobile;


            }
            set
            {
                em_mobile = value;
            }
        }
        public string Em_address
        {
            get
            {
                return em_address;


            }
            set
            {
                em_address = value;
            }
        }
        public string Em_email
        {
            get
            {
                return em_email;


            }
            set
            {
                em_email = value;
            }
        }
       
        public string Em_dateofbirth
        {
            get
            {
                return em_dateofbirth;


            }
            set
            {
                em_dateofbirth = value;
            }
        }
        public string DepID
        {
            get
            {
                return depID;


            }
            set
            {
                depID = value;
            }
        }
        public Employer(string em_fnames, string em_lnames, string em_usertypes, string em_passwords, string em_genders, string em_mobiles, string em_addresss, string em_emails, string em_dateofbirths, string DId)
        {
            this.em_fname = em_fnames;
            this.em_lname = em_lnames;
      this.em_usertype = em_usertypes;
    this.em_password = em_passwords;
    this.em_gender = em_genders;
            this.em_mobile = em_mobiles;
            this.em_address = em_addresss;
            this.em_email = em_emails;
          this.em_dateofbirth = em_dateofbirths;
          this.depID = DId;
              
        }


        public Employer(int em_ids, string em_fnames, string em_lnames, string em_usertypes, string em_passwords, string em_genders, string em_mobiles, string em_addresss, string em_emails, string em_dateofbirths)
        {
            this.em_id = em_ids;
            this.em_fname = em_fnames;
            this.em_lname = em_lnames;
            this.em_usertype = em_usertypes;
            this.em_password = em_passwords;
            this.em_gender = em_genders;
            this.em_mobile = em_mobiles;
            this.em_address = em_addresss;
            this.em_email = em_emails;
            this.em_dateofbirth = em_dateofbirths;
        }
        public Employer(int em_ids)
        {
            this.em_id = em_ids;
           
        }
    }
}