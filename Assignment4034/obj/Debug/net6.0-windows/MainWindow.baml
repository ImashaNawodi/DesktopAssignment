   M S B A M L   `   `   `  ����I  EAssignment4034, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Assignment4034Assignment4034  5   	       Assignment4034.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Assignment4034     5   	     � Title$  
MainWindow��5   	   $	��500��6   $	��800��6)    � DataContext 5      !   Assignment4034.MainWindowVM  5   
    � 	Resources 5         StackPanelBackgroundBrush �� ImageSource��%I   &	        �� 5   
   $+ %ViewModel/Images/student_PNG62536.png��67   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� ���	#FFC0CED1.+�5      �� $��0��6   $��Welcome!��6&   $��Center=�66   $	��Top=�6S   $��0,5,0,0q�6k   $��20(�6|   $
��Bold"�6�   5      �� 5   
   $��1��6   $	��800��6"   $	��130��6.   $��Bottom=�5      #��[  5       �� Orientation$ Vertical=�5       .+�5"      �� $��Edit Student��6     	keyButton#��[ 6-   ��6P   �� *EditStudentCommand+�� 5#      $��Add Student��6   #��[ 6R   ��6+   �� *AddStudentCommand+6R   �� 5$      $��Delete Student��6   #��[ 6/   ��6R   �� *DeleteStudentCommand+5(      �� 5)   
   $��2��6   $	��300��6"   ���	#FF008080$
��Top =�6F   $ Vertical=�6_   .+�5*      �� $��	 40 0 0 0q�6   $
��Left=�6-   $	��600��6H   
������ $ 
Horizontal=�6n   .+�5,      �� $��	FirstName��6   ���	#FF800000  ListView#��[ 6E   �� 5-      $��LastName��6   ���	#FF800000#��[ 6E   �� 5.      $��Gender��6   ���	#FF800000#��[ 6B   �� 5/      $��DataOfBirth��6   ���	#FF800000#��[ 6H   �� 50      $	��Gpa��6   ���	#FF800000#��[ 6?   52      �� 53      -   5         ��Name$ Listview��53      
������ $	��280��6B   ��6O   �� *User+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 54      �� *
SelectUser+$ PropertyChanged=���55      �� 56      .R�57      �� 
������ 
���   �$��2q�6N   	 �� Padding$		 0.2q�58   !   
 �� CornerRadius$
 7��6/   $	��650��6@   $��38��6L   ._�59      �� $	��600��6)   
������ $ 
Horizontal=�6O   .+�5;   "   �� #��[ 6m   ��6,   �� *	FirstName+$ PropertyChanged=�6m   �� 5<   "   #��[ 6l   ��6,   �� *
LastName+$ PropertyChanged=�6l   �� 5=   "   #��[ 6j   ��6,   �� *Gender+$ PropertyChanged=�6j   �� 5>   "   #��[ 6o   ��6,   �� *DateOfBirth+$ PropertyChanged=�6o   �� 5?   "   #��[ 6g   ��6,   �� *Gpa+$ PropertyChanged=�6g   �� 5@   "   $��60��6(   $��30��63   $��1q�6?   ��6J   �� *	ImagePath+5B      5D      5E      5H      5I      5L      5P      