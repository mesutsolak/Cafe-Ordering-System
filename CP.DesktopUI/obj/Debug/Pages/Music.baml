   M S B A M L   `   `   `  ����G  CCP.DesktopUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CP.DesktopUI.PagesCP.DesktopUI.Pages  5          CP.DesktopUI.Pages.Music   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:CP.DesktopUI.Pages     5      V RMaterialDesignThemes.Wpf, Version=3.1.1.1361, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6=   
�������.��5	      � .+�5
   
   � $��55��6   
������ $	��Top=�64   .+�5      ��   �� Orientation$  
Horizontal=�6   .+�5      �� $��Müzik Listesi��6   $��
10,10,10,0q�60   $��24(�6D   5      �� 5      -   5         ��Name$ btnMusicRefresh��5      $	��160��6.   $��10q�6:   $��Right=�6G   .��5      �� $  
Horizontal=�6    � Cursor$
 Hand��66   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Refresh=�6.   $��25��6=   $��18��6H   �� 5      �� 6!   $�Müzikleri Yenile��6%   6@   5      5      �� 5      
�������$��2,30,-2,-26q�6*   6A   5      � 5   
   .+�5      �� -   5         ��Name$ 	MusicView��5      $��
0,65,0,-65q�6I   ��6*   �� *musics+ �� View 5      �� 5      .P�5      �� $��Müzik Adı��6T    �� Width$	 100��6g    �� DisplayMemberBinding 6)   �� *	MusicName+6g   �� 5      $��Sanatçı Adı��6U   $	 120��6j    6)   �� *
ArtistName+6j   �� 5      $��İsim��6Y   $ 75��6g    6)   �� *User.FirstName+6g   �� 5      $��Soyisim��6X   $ 75��6i    6)   �� *User.LastName+6i   �� 5      $��
İşlemler��6)    �� CellTemplate 5      �� 5    "   .R�5!   &   �� $  
Horizontal=�61   $	��Top=�6J   $
��Left=�6c   .+�5"   *     	  Name$	 btnMusicConfirm��6C   -   5        $
 Hand��5"   \   
 � ToolTip$
 Sipariş Onayla��6j   $
 Tick=�6�   $��5q�6�   
��� � �$��15��6�   $��25��6  $��Center=�6  
 � Tag 6�   �� *Id+6    5#   *   $	 btnMusicTrash��6C   -   5        $
 Hand��5#   Z   $
 Siparişi Sil��6h   $ Trash=�6�   $��15��6�   
���  ��$��25��6�   $��Center=�6�    6�   �� *Id+6�   5$   '   5%   #   5'      5(      5*      5+      5,      5-      