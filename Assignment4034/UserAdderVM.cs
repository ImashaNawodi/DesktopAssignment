using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows;
using Assignment4034.ViewModel;

namespace Assignment4034
{
    public partial class UserAdderVM : ObservableObject
    {
        [ObservableProperty]
        public string? firstName;

        [ObservableProperty]
        public string? lastName;

        [ObservableProperty]
        public string? dateOfBirth;

        [ObservableProperty]
        public double gpa;

        [ObservableProperty]
        public string gender;

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage addImage;

        public UserAdderVM(UserProfile up)
        {
            Student = up;

            firstName = Student.FirstName;
            lastName = Student.LastName;
            gpa = Student.Gpa;
            gender = Student.Gender;
            dateOfBirth = Student.DateOfBirth;
            addImage = Student.Image;
             
        }
        public UserAdderVM()
        {

        }

        [RelayCommand]
        public void AddPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                addImage = new BitmapImage(new Uri(dialog.FileName));

                MessageBox.Show("Imgae successfuly uploded!", "successfull");
            }
        }


        public UserProfile Student { get; private set; }
        public Action CloseAction { get; internal set; }

        [RelayCommand]
        public void Save()
        {
            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("Invalid value,GPA value must be between 0 and 4.", "Error,Try Again");
                return;
            }
            if (Student == null)
            {

                Student = new UserProfile()
                {
                    FirstName = firstName,
                    LastName = lastName,
                    Gender = gender,
                    DateOfBirth = dateOfBirth,
                    Image = addImage,
                    Gpa = gpa

                };

            }
            else
            {

                Student.FirstName = firstName;
                Student.LastName = lastName;
                Student.DateOfBirth = dateOfBirth;
                Student.Gender = gender;
                Student.Image = addImage;
                Student.Gpa = gpa;
            }

            if (Student.FirstName != null)
            {

                CloseAction();
            }
            Application.Current.MainWindow.Show();


        }
    }
}

