   M S B A M L   `   `   `  ����G  CCP.DesktopUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CP.DesktopUICP.DesktopUI  5   	       CP.DesktopUI.Main   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:CP.DesktopUI     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.1.1361, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$
  Main��5	   	   $	��600��6   $
��1080��6#    � 
ResizeMode$ NoResize=�60    � WindowStartupLocation$ CenterScreen=�6F   
������� � WindowStyle$
 None=�6~    � 	Resources 5
         MenuOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	MenuClose��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 60Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 60Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5!      � 
�������.+�5"   
   � $��70��6   $	��Top=�6   ���	#FF1368BD.+�5#      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5$      �� $��/Images/cafe.png��6   $��	0,15,0,11q�62   �� 5%      $��Beyoğlu Kafesi��6   $��Center=�63   $��Center=�6P   $��22(�6k   $��	8,22,8,18q�6y   5&      �� 5(      $��Center=�6   $ 
Horizontal=�64   $��Right=�6M   .+�5)      �� -   5         ��Name$ 	FirstLast��5)      $��
Abel Dutra��6/   $��Center=�6A   $��18(�6\   '  !MaterialDesignThemes.Wpf.PopupBox  5*      $��10q�6+      PlacementMode$ BottomAndAlignRightEdges=�67      	StaysOpen .     PopupContent. 5+      �� $	��150��6!   $	��120��6-   .+�5,      �� -   5         ��Name$ 	btnLogOut��5,   !   $	��150��6L   $��Çıkış Yap��6X   �� 5-      �� 5.      -   5        $ btnShutDown��5.   !   $	��150��6P   $��Uygulamadan Çık��6\   5/      52      53      54      � 55   
   -   5         �Name$ GridMenu��55       K� ZIndex$ 1��6!   $
��Left=�62   $��60��6M   ���	#FF1B3861.+�56      �� .+�57      � $��70��6   
�������.+�58      �� -   5        $ ButtonCloseMenu��58      $��60��66   $��60��6B   $	��Top=�6{   $��Right=�6�   $y�	Collapsed=�6�   ��6N   Z� ��6d   Z� .��59      '  !MaterialDesignThemes.Wpf.PackIcon  ���	#FF1B3861   Kind$ 	ArrowBack=�6I   $��25��6Z   $��25��6e   5:      �� 5;      -   5        $ ButtonOpenMenu��5;      $��60��65   $��70��6@   $	��Top=�6y   $��Right=�6�   ��6L   Z� ��6b   Z� .��5<        ���	#FF1B3861$
 Menu=�6I   $
��0,15q�6U   $��25��6c   $��25��6n   $��Center=�6z   5=      5>      �� 5?      -   5         ��Name$ MenuListView��5?      $��Disabled=�61   ���	#FF1368BD �� SelectionMode$ Single=�6~   ��5A      �� 5B       �� 
TargetType" ��6     �� Triggers 5C      P� 5D   "    P� Property �@J�IsKeyboardFocusWithin P� Value .  N� EnterActions 5E   &   �� 5F   *   .��5G   .   �� .��5H   2   �� $ 
IsSelected�5I   #   .p�5J   6   s�  �� KeyTime$ 0:0:0��6N    �� Value True5K   &   5L   3   5M   /   5N   +   5P   #   5R      .@�5T      �� -   5         ��Name$
 Home��5T   /   $��60��6#   .��5U      �� $ 
Horizontal=�6%   .+�5V        $��10q�66   $
 Home=�6B   $��25��6N   $��25��6Y   $��Center=�6e   �� 5W      $��Anasayfa��6(   $��Center=�68   $��20 10q�6S   5X      5Y      �� 5Z      -	   5        $
 Cart��5Z   /   $��60��6#   .��5[      �� $ 
Horizontal=�6%   .+�5\        $��10q�66   $
 Cart=�6B   $��25��6N   $��25��6Y   $��Center=�6e   �� 5]      $��Sipariş��6(   $��Center=�67   $��20 10q�6R   5^      5_      �� 5`      -
   5        $ Table��5`   /   $��60��6#   .��5a      �� $ 
Horizontal=�6%   .+�5b        $��10q�66   $ 
TableChair=�6B   $��25��6T   $��25��6_   $��Center=�6k   �� 5c      $��Masalar��6(   $��Center=�67   $��20 10q�6R   5d      5e      �� 5f      -   5        $ Music��5f   /   $��60��6#   .��5g      �� $ 
Horizontal=�6%   .+�5h        $��10q�66   $ Music=�6B   $��25��6O   $��25��6Z   $��Center=�6f   �� 5i      $��	Müzikler��6(   $��Center=�68   $��20 10q�6S   5j      5k      5l      5m      5n      � 5o   
   -   5        $ Content��5o      $
��Left=�6    $
��1020��6;   $	��530��6H   
�������$��	60,70,0,0q�6h   .+�5p      �� -   5         ��Name$ StpGrid��5p      5r      5s      5t      5u      