using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Assignment4034.ViewModel
{
    public class UserProfile
    {
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string? Gender { get; set; }
        public BitmapImage Image { get; set; }

        public string? DateOfBirth { get; set; }
        public double Gpa { get; set; }

        public string ImagePath
        {
            get { return $"/Images Folder/{Image}"; }
        }

        public UserProfile(string firstName, string lastName,string gender ,string dateOfBirth,double gpa, BitmapImage image)
        {
            FirstName = firstName;
            LastName = lastName;
            Gender = gender;
            DateOfBirth = dateOfBirth;
            Gpa = gpa;
            Image = image;
        }
        public UserProfile()
        {

        }
        


    }
}

    
