   M S B A M L   `   `   `  ����I  EAssignment4034, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Assignment4034Assignment4034  5   	   $    Assignment4034.UserAdderWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Assignment4034     5   	   $	��450��5   E   $	��800��6R     � Title  6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5
          Assignment4034.UserAdderVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $	��800��5      $	��500��6   $��Center=�6'   $	��Top=�5       �� Orientation$ Vertical=�6%   ���	#FF48D1CC.+�5      ��    
keyButton1#��[  6   $
��Left=�69   $��5,10,-55,-30q�6x   $��3��6�   $��Bottom=�6�   $��2��6�   ��6T   �� *AddPhotoCommand+.��5      �� $ 
Horizontal=�6   .+�5      �� $#��/ViewModel/Images/1831649.png��6   $��60��5      $��60��6"   $��Center=�6-   $��0,0,5,0q�6H   5!      5"      �� 5#      $��Insert Your Photo here��6    �� TextAlignment$
 Left=�66   $��80,0,10,-30q�6K   $��1��6b   �� 5$      $��15q�6   $ Center=�6$   $��Center=�6v   $��00��6�   ��6;   �� *Title+$ PropertyChanged=�6�   �� 5%      $��First Name:��6   $��5q�6+   �� 5&      $��5q�6V   $��1��6a   ��6   �� *	FirstName+$ PropertyChanged=�6a   �� 5'      $��
Last Name:��6   $��5q�6*   $��1��65   �� 5(      $��5q�6U   $��1��6`   ��6   �� *
LastName+$ PropertyChanged=�6`   �� 5)      $��Gender:��6   $��5q�6'   $��1��62   �� 5*      $��5q�6S   $��1��6^   $��1��6k   ��6   �� *Gender+$ PropertyChanged=�6k   �� 5+      $��DateOfBirth:��6   $��5q�6,   $��1��67   �� 5,      $��5q�6X   $��1��6c   $��1��6p   ��6   �� *DateOfBirth+$ PropertyChanged=�6p   �� 5-      $	��GPA��6   $��5q�6#   $��1��6.   �� 5.      $��5q�6P   $��1��6[   $��1��6h   ��6   �� *Gpa+$ PropertyChanged=�6h   �� 50      $
��Save��6     
keyButton2#��[ 6%   ��6I   �� *SaveCommand+55      57      58      