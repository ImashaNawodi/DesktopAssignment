using Assignment4034.ViewModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;


namespace Assignment4034
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<UserProfile> user;
        [ObservableProperty]
        public UserProfile selectUser = null;

        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }

        [RelayCommand]
        public void messeage()
        {

            MessageBox.Show($"{selectUser.FirstName} Invalid value,GPA value must be between 0 and 4.", "Error,Try Again");
        }

        [RelayCommand]
        public void AddStudent()
        {
         
            var vm = new UserAdderVM();
            vm.title = "NEW USER WINDOW";
            UserAdderWindow window = new UserAdderWindow(vm);
            window.ShowDialog();
            if (vm.Student != null && vm.Student.FirstName != null)
            {
                user.Add(vm.Student);
            }


        }

        [RelayCommand]
        public void DeleteStudent()
        {
            if (selectUser != null)
            {
                string name = selectUser.FirstName;
                user.Remove(selectUser);
                MessageBox.Show($"The {name} has been deleted.", "Deletion Succeed");

            }
            else
            {
                MessageBox.Show("The deletion requires a student to be selected. Please make a selection.", "Error,Select a student");


            }
        }
        [RelayCommand]
        public void EditStudent()
        {
            if (selectUser != null)
            {
                var vm = new UserAdderVM(selectUser);
                vm.title = "EDIT USER";
                var window = new UserAdderWindow(vm);
                window.ShowDialog();


                int index = user.IndexOf(selectUser);
                user.RemoveAt(index);
                user.Insert(index, vm.Student);

            }
            else
            {
                MessageBox.Show("Editing requires a student to be selected. Please make a selection.", "Error,Select a student");
            }
        }

        public MainWindowVM()
            
        {
            user = new ObservableCollection<UserProfile>();
            BitmapImage image1 = new BitmapImage(new Uri("/Images Folder/10.png", UriKind.Relative));
            user.Add(new UserProfile("Asitha", "Perera","Male", "30/05/1998",2.30,image1));
            BitmapImage image2 = new BitmapImage(new Uri("Images Folder/2.png", UriKind.Relative));
            user.Add(new UserProfile("Bhagya", "Kulasena","Female", "27/07/1997", 3.40,image2));
            BitmapImage image3 = new BitmapImage(new Uri("Images Folder/3.png", UriKind.Relative));
            user.Add(new UserProfile("Chamath", "Sumanasena","Male", "15/11/1999",2.94, image3));
            BitmapImage image4 = new BitmapImage(new Uri("Images Folder/4.png", UriKind.Relative));
            user.Add(new UserProfile("Dilsha", "Sewwandi","Female", "12/05/1998",3.23, image4));
            BitmapImage image5 = new BitmapImage(new Uri("Images Folder/5.png", UriKind.Relative));
            user.Add(new UserProfile("Imesha", "Liyanage", "Female", "22/08/1999", 1.90, image5));
            BitmapImage image6 = new BitmapImage(new Uri("Images Folder/6.png", UriKind.Relative));
            user.Add(new UserProfile("Srimal", "Chathranga", "Male", "01/12/1997",2.89 , image6));

        }
    }
}


   
