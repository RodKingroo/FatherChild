   M S B A M L   `   `   `  ����D  @LabelBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:LabelBase	LabelBase  5   	       LabelBase.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:LabelBase     5   	     � Title$  
MainWindow��5   	   $	��400��6   $	��800��6)   .��5	      � .+�5
   
   �� .@�5      �� $
��Save��6   .��5      �  � ColumnDefinitions 5      �� 5      �� 5      .+�5      �� $��0��6   $
��Save��6-   $	��100q�6<   $��50��6I   ��6U   �� *
SaveButton+�� 5      $��1��6   $
��Load��6-   $	��100q�6<   $��50��6I   ��6U   �� *
LoadButton+5      5      �� 5      $��Child��6   .��5      �  5      �� 5      �� 5      .+�5      � $��5,5,5,50q�6   $��0��6-    5      �� 5      �� 5       � RowDefinitions 5!      �� 5"      $
��auto �6,   �� 5#      $
��auto �6,   �� 5$      $
��auto �6,   �� 5%      $
��auto �6,   .+�5(      �� $��0��6$   $��0��64   $��25��6A   $��5q�6M    �� TextAlignment$ Right=�6�   ��6X   ��  �� ElementName$ 	ChildGrid�� �� Path$ Columns[0].Header� �� StringFormat$
 {0}:��6�   �� 5)      $��0��6$   $��1��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 	ChildGrid��$ Columns[1].Header�$
 {0}:��6�   �� 5*      $��0��6$   $��2��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 	ChildGrid��$ Columns[2].Header�$
 {0}:��6�   �� 5+      $��0��6$   $��3��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 	ChildGrid��$ Columns[3].Header�$
 {0}:��6�   �� 5-      $��1��6"   $��0��62   $��25��6?   $��5q�6u   ��6K   �� *SelectedChildren.ChildID+6u   �� 5.      $��1��6"   $��1��62   $��25��6?   $��5q�6w   ��6K   �� *SelectedChildren.Firstname+6w   �� 5/      $��1��6"   $��2��62   $��25��6?   $��5q�6x   ��6K   �� *SelectedChildren.Secondname+6x   �� 50      $��1��6#   $��3��63   $��25��6@   $��5q�6�   ��6L   �� *	Fathers+ �� SelectedItem 6l   �� *SelectedChildren.Father+��51      �� 52   "   .R�53   &   �� ��54   *   `� 55   .   $ {0} {1}��6;   .1�56   2   �� $ 	Firstname�6:   �� 57   2   $ 
Secondname�6:   58   /   5:   '   5;   #   5=      5>      &   System.Windows.Controls.DataGrid  5?      -   5        $��	ChildGrid��5?      $��1��60   $��
0,10,10,10q�6@      AutoGenerateColumns .  ��6p   �� *
Children+ 6�   �� *SelectedChildren+	   Columns	 5@      0  *System.Windows.Controls.DataGridTextColumn  5A      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$

 auto 61      Header$ ID��6>   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6J   �� *	ChildID+  5B      $

 auto 61   $ 	Firstname��6>    6Q   �� *	Firstname+  5C      $

 auto 61   $ 
Secondname��6>    6R   �� *
Secondname+  5D      $

 auto 61   $ Father��6>    6N   �� *Father.FatherID+5F      �� 5G      $��25��6   $��
10,0,10,20q�6)   $��	Add Child��6=   $��Bottom=�6t   ��6Q   �� *AddChildButton+6t   5H      5I      �� 5J      $��Father��6   .��5K      �  5L      �� 5M      �� 5N      .+�5Q      � $��5,5,5,50q�6   $��0��6-    5R      �� 5S      �� 5T       5V      �� 5W      $
��auto �6,   �� 5X      $
��auto �6,   �� 5Y      $
��auto �6,   �� 5Z      $
��auto �6,   .+�5]      �� $��0��6$   $��0��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 
FatherGrid��$ Columns[0].Header�$
 {0}:��6�   �� 5^      $��0��6$   $��1��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 
FatherGrid��$ Columns[1].Header�$
 {0}:��6�   �� 5_      $��0��6$   $��2��64   $��25��6A   $��5q�6M   $ Right=�6�   ��6X   �� $ 
FatherGrid��$ Columns[2].Header�$
 {0}:��6�   �� 5a      $��1��6"   $��0��62   $��25��6?   $��5q�6u   ��6K   �� *SelectedFathers.FatherID+6u   �� 5b      $��1��6"   $��1��62   $��25��6?   $��5q�6v   ��6K   �� *SelectedFathers.Firstname+6v   �� 5c      $��1��6"   $��2��62   $��25��6?   $��5q�6w   ��6K   �� *SelectedFathers.Secondname+6w   5e        5f      -   5        $��
FatherGrid��5f      $��1��61   $��
0,10,10,10q�6A    .  ��6q   �� *	Fathers+ 6�   �� *SelectedFathers+	 5g        5h      $

 auto 61   $ ID��6>    6J   �� *
FatherID+  5i      $

 auto 61   $ 	Firstname��6>    6Q   �� *	Firstname+  5j      $

 auto 61   $ 
Secondname��6>    6R   �� *
Secondname+5l      �� 5m      $��25��6   $��
10,0,10,20q�6)   $��
Add Father��6=   $��Bottom=�6v   ��6R   �� *AddFatherButton+6v   5n      5o      5p      5r      5s      