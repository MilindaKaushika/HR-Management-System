using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Forumfeedback
    {
        private int Forum_ID;
        private string Title;
        private string Date; 
        private string Email;
        private string Message;
        private string UserName;

        public int forum_ID
        {
            get
            {
                return Forum_ID;


            }
            set
            {
                Forum_ID = value;
            }
        }
        public string title
        {
            get
            {
                return Title;


            }
            set
            {
                Title = value;
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

        public string email
        {
            get
            {
                return Email;


            }
            set
            {
                Email = value;
            }
        }
        public string message
        {
            get
            {
                return Message;


            }
            set
            {
                Message = value;
            }
        }
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
        public Forumfeedback(string Title, string Date, string email, string Message, string UserName)
        {

   
            this.Title = Title;
            this.Date = Date;
            this.email = email;
            this.Message = Message;
            this.UserName = UserName;
        }
    }
}