   M S B A M L   `   `   `  ����=  9Q1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Q1Q1  5   	       Q1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   "localclr-namespace:Q1     5   	   -   5          � Title$  
MainWindow��5   	   $	��800��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   ��  �� Orientation$ Vertical=�6   
��� ���$	��450��6D   $
��Left=�5      .+�5      �� $��Guitar List len git��6   $��18(�62   
��� ���$
��Bold"�5      �� 5      $��Email��6   �� 5      -   5        $��txtEmail��5       � DataContext 5      ��  �� ElementName$ 
lvEmployee�� �� Path$ SelectedItem���5      �� $ email� �� Mode$ OneWay=��� 5      $��Password��6   �� 5      -   5        $��txtPassword��5       5      �� $ 
lvEmployee��$ SelectedItem���5      �� $ password�$ OneWay=��� 5      $��	FirstName��6   �� 5      -   5        $��txtFirstName��5       5      �� $ 
lvEmployee��$ SelectedItem���5       �� $ 	firstname�$ OneWay=��� 5!      $��Lastname��6   �� 5"      -   5        $��txtLastName��5"       5#      �� $ 
lvEmployee��$ SelectedItem���5$      �� $ lastname�$ OneWay=��� 5%      -   5        $��
txtAddress��5%      $��Address��6&   6:   �� 5&      -   5        $��txtcb��5&       �� Text 5'      �� $ 
lvEmployee��$ SelectedItem.Address�$ OneWay=�.@�5(      �� .��6   Hanoi6&   �� 5)      .��6   
Haiphong6)   �� 5*      .��6   Danang6'   �� 5+      .��6   HCMC6%   5,      �� 5-      $��IsPasswordChanged��6   �� 5.      $ 
Horizontal=�6   .+�5/      	� -   5        $
��male��5/      $
��Male��6*   	 d� 	IsChecked	 69   �� $
 male�$ OneWay=� 6f   �� $ 
lvEmployee��$ SelectedItem�6�   	� 50      -	   5        $��female��50      $��Female��6,   	 6=   �� $ isFemale�$ OneWay=� 6n   �� $ 
lvEmployee��$ SelectedItem�6�   51      52      �� 53   
   $ 
Horizontal=�6   $��1��6.   $	��450��6;   $
��Left=�6G   .+�54      �� -
   5        $��btnAdd��54      $��	Add List ��6#   $��50��67   $��25��6B   $��15q�6N   6Z   �� 55      -   5        $��	btnImport��55      $��Import File��6&   $��80��6<   $��25��6G   $��15q�6S   6_   �� 56      -   5        $��btnSave��56      $��Save Database��6$   $��80��6<   $��25��6G   $��15q�6S   6_   57      � 59   
   $��2��6   
 � ColumnDefinitions
 5:      �� 5;      $
��Auto �6#   �� 5<      $
��Auto �6#   �� 5=      $
��Auto �6#   �� 5>      $
��Auto �6#   �� 5?      $
��Auto �6#   �� 5@      $
��Auto �6#   5B      �� 5D   
   -   5        $��
lvEmployee��5D       $��3��6    �� View 5E      �� 5F      .P�5G      �� $��Email��6%    �� Width$	 100��64    �� DisplayMemberBinding 5H   
   �� $ email��� 5I      $��Password��6%   $	 100��67    5J   
   �� $ password��� 5K      $��
First Name��6%   $	 100��69    5L   
   �� $ 	firstname��� 5M      $��	Last Name��6%   $	 100��68    5N   
   �� $ lastname��� 5O      $��Address��6%   $	 100��66    5P   
   �� $ Address��� 5Q      $��Changes��6%   $	 100��66    5R   
   �� $
 male�5S      5U      5V      5W      