using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Courses
    {
  
        private int Cousrse_ID;
        private string Title;
        private string Duratiom;
        private int Em_Id;

        public int cousrse_ID
        {
            get
            {
                return Cousrse_ID;


            }
            set
            {
                Cousrse_ID = value;
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
         public string duratiom
        {
            get
            {
                return Duratiom;


            }
            set
            {
                Duratiom = value;
            }
        }
          public int em_Id
        {
            get
            {
                return Em_Id;


            }
            set
            {
                Em_Id = value;
            }
        }
          public Courses(int cousrse_ID, string Title, string Duratiom, int Em_Id)
        {

            this.cousrse_ID = cousrse_ID;
            this.Title = Title;
            this.Duratiom = Duratiom;
            this.Em_Id = Em_Id;
        }
   }  }