   M S B A M L   `   `   `  ����G  CCP.DesktopUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CP.DesktopUI.PagesCP.DesktopUI.Pages  5          CP.DesktopUI.Pages.Cart   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:CP.DesktopUI.Pages     5      V RMaterialDesignThemes.Wpf, Version=3.1.1.1361, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6=   
�������.��5	      � .+�5
   
   � $��55��6   
������ $	��Top=�64   .+�5      ��   �� Orientation$  
Horizontal=�6   .+�5      �� $��Sipariş Listesi��6   $��
10,10,10,0q�62   $��24(�6F   5      �� 5      -   5         ��Name$ btnOrderRefresh��5      $	��160��6.   $��10q�6:   $��Right=�6e   .��5      �� $  
Horizontal=�6    � Cursor$
 Hand��66   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Refresh=�6.   $��25��6=   $��18��6H   �� 5      �� 6!   $�Siparişleri Yenile��6%   6B   5      5      �� 5      
�������$��2,30,-2,-26q�6*   6A   5      � 5   
   .+�5      �� -   5         ��Name$ CartView��5      $��
0,65,0,-65q�6G   ��6)   �� *carts+ �� View 5      �� 5      .P�5      �� $��Ürün Adı��6W    �� Width$	 100��6i    �� DisplayMemberBinding 6)   �� *Product.Name+6i   �� 5      $��Miktarı��6P   $ 75��6a    6)   �� *Count+6a   �� 5      $��Fiyatı��6P   $ 75��6`    6)   �� *Price+6`   �� 5      $��İsim��6Y   $ 55��6g    6)   �� *User.FirstName+6g   �� 5      $��Soyisim��6X   $ 95��6i    6)   �� *User.LastName+6i   �� 5      $��Masa Numarası��6W   $	 150��6n    6)   �� *Table.Number+6n   �� 5       $��
İşlemler��6)    �� CellTemplate 5!      �� 5"   "   .R�5#   &   �� $  
Horizontal=�61   $	��Top=�6J   $
��Left=�6c   .+�5$   *     	  Name$	 btnCartUpdate��6C   -   5        $
 Hand��5$   Z   
 � ToolTip$
 Sipariş Onayla��6h   $
 Tick=�6�   $��5q�6�   
��� � �$��15��6�   $��25��6   $��Center=�6  
 � Tag 6�   �� *Id+6    5%   *   $	 btnCartTrash��6C   -   5        $
 Hand��5%   Y   $
 Siparişi Sil��6g   $ Trash=�6�   $��15��6�   
���  ��$��25��6�   $��Center=�6�    6�   �� *Id+6�   5&   '   5'   #   5)      5*      5,      5-      5.      5/      