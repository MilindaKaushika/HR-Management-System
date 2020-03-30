using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Department
    {
        private string DepartmentId;
        private string DepartmentName;



        public string departmentId
        {
            get
            {
                return DepartmentId;


            }
            set
            {
                DepartmentId = value;
            }
        }
        public string departmentName
        {
            get
            {
                return DepartmentName;


            }
            set
            {
                DepartmentName = value;
            }
        }
        public Department(string DepartmentId, string DepartmentName)
        {

            this.DepartmentId = DepartmentId;
            this.DepartmentName = DepartmentName;
     
        }
    }
}