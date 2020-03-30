using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Salary
    {
        private string payID;
        private int em_Id;
        private string DepName;
        private string Date;
        private double Gross_Sal;
        private double EPF;
        private double ETF;
        private int leavesdays;
        private double Net_Sal;

        public string PayID
        {
            get
            {
                return payID;


            }
            set
            {
                payID = value;
            }
        }
        public int Em_Id
        {
            get
            {
                return em_Id;


            }
            set
            {
                em_Id = value;
            }
        }
        public string depName
        {
            get
            {
                return DepName;


            }
            set
            {
                DepName = value;
            }
        }
        public string date
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
        public double gross_Sal
        {
            get
            {
                return Gross_Sal;


            }
            set
            {
                Gross_Sal = value;
            }
        }
        public double epf
        {
            get
            {
                return EPF;


            }
            set
            {
                EPF = value;
            }
        }
        public double etf
        {
            get
            {
                return ETF;


            }
            set
            {
                ETF = value;
            }
        }
        public int Leavesdays
        {
            get
            {
                return leavesdays;


            }
            set
            {
                leavesdays = value;
            }
        }
        public double net_Sal
        {
            get
            {
                return Net_Sal;


            }
            set
            {
                Net_Sal = value;
            }
        }
        public Salary(string PayIDs, int Em_Ids, string DepNames, string dates, double gross_Sals, double epfs, double etfs, int Leavesdays, double net_Sals)
        {

            this.PayID = PayIDs;
            this.Em_Id = Em_Ids;
            this.DepName = DepNames;
            this.date = dates;
            this.gross_Sal = gross_Sals;
            this.epf = epfs;
            this.etf = etfs;
            this.Leavesdays = Leavesdays;
            this.net_Sal = net_Sals;
        }
    }
}