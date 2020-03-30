using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Leave
    {
        private int leave_Id;
        private string em_fname;
        private string em_email;
        private string leave_type;
        private string depID;
        private string depName;
        private string leave_to;
        private string leave_from;
        private string leave_reason;
        private string leave_days;
        private string em_Apporel;
        private int em_id;

        public int Leave_Id
        {
            get
            {
                return leave_Id;

            }
            set
            {
                leave_Id = value;
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
        public string Leave_type
        {
            get
            {
                return leave_type;

            }
            set
            {
                leave_type = value;
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
        public string DepName
        {
            get
            {
                return depName;

            }
            set
            {
                depName = value;
            }
        }
        public string Leave_to
        {
            get
            {
                return leave_to;

            }
            set
            {
                leave_to = value;
            }
        }
        public string Leave_from
        {
            get
            {
                return leave_from;

            }
            set
            {
                leave_from = value;
            }
        }
        public string Leave_reason
        {
            get
            {
                return leave_reason;

            }
            set
            {
                leave_reason = value;
            }
        }
        public string Leave_days
        {
            get
            {
                return leave_days;

            }
            set
            {
                leave_days = value;
            }
        }

        public string Em_Apporel
        {
            get
            {
                return em_Apporel;

            }
            set
            {
                em_Apporel = value;
            }
        }
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
        //private List<string> mPreference;
    
          public Leave(string em_fnames, string em_emails, string leave_types, string depNames,string leave_tos, string leave_froms,
              string leave_reasons, string leave_dayss, int em_Id)
        {
        
            this.em_fname = em_fnames;
            this.em_email = em_emails;
            this.leave_type = leave_types;
      
            this.depName = depNames;
            this.leave_to = leave_tos;
            this.leave_from = leave_froms;
            this.leave_reason = leave_reasons;
            this.leave_days = leave_dayss;
            this.em_id = em_Id;
     
        }
          public Leave(int leave_Id, string em_Apporelss)
          {
              this.Leave_Id = leave_Id;
              this.em_Apporel = em_Apporelss;
              
            
          }
          //public Leave(string ename, string dname, string noLeaveDays)
          //{
          //    this.em_fname = ename;
          //    this.depName = dname;
          //    this.leave_days = noLeaveDays;
          //}
          //public Leave(string ename)
          //{
          //    this.em_fname = ename;

          //}

          //public Leave(Leave leave)
          //{
          //     TODO: Complete member initialization
          //    this.leave = leave;
          //}
    }
} 