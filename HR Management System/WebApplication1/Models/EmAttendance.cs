using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class EmAttendance
    {
    
        private int em_id;
        private DateTime Date;
        private string Timein;
        private string Timeout;
        private string Em_fname;
        private string depID;
        private string status;
        private DateTime eTime;
  

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
        public DateTime date
        {
            get
            {
                return Date;


            }
            set
            {
                Date = value;
            }
        }
      
      
        public string timein
        {
            get
            {
                return Timein;


            }
            set
            {
                Timein = value;
            }
        }
        public string timeout
        {
            get
            {
                return Timeout;


            }
            set
            {
                Timeout = value;
            }
        }

        public string em_fname
        {
            get
            {
                return Em_fname;


            }
            set
            {
                Em_fname = value;
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
        public string Status
        {
            get
            {
                return status;


            }
            set
            {
                status = value;
            }
        }

        public DateTime ETime
        {
            get
            {
                return eTime;


            }
            set
            {
                eTime = value;
            }
        }
        

        public EmAttendance(int em_ids, DateTime DateS,string em_fnameS, string DId, string Statuss)
        {

            this.em_id = em_ids;
            this.Date = DateS;
            this.Em_fname = em_fnameS;
            this.depID = DId;
            this.Status = Statuss;
        }

       
        public EmAttendance(string emName, DateTime attTime)
        {
            this.Em_fname = emName;
            this.eTime = attTime;

        }
       
    }
}