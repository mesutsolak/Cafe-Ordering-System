   M S B A M L   `   `   `  ����G  CCP.DesktopUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:CP.DesktopUI.PagesCP.DesktopUI.Pages  5      ` \De.TorstenMandelkow.MetroChart, Version=0.9.5818.20693, Culture=neutral, PublicKeyToken=nullwTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChartDe.TorstenMandelkow.MetroChart 6�       CP.DesktopUI.Pages.Home   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:CP.DesktopUI.Pages     5      V RMaterialDesignThemes.Wpf, Version=3.1.1.1361, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6=   e
MetroChartTclr-namespace:De.TorstenMandelkow.MetroChart;assembly=De.TorstenMandelkow.MetroChart  6�   
�������.��5	      � .+�5   
   � .+�5      �� .��5      �   � RowDefinitions  5      �� 5      $	��200 �6(   �� 5      $��* �6(   �� 5      $��* �6(    � ColumnDefinitions 5      �� 5      $��1* �6+   �� 5      $��1* �6+   �� 5      $��1* �6+   .+�5      � $��0��6   .+�5      �� $	��120��6$   $��20q�61   
������� �� RadiusY$ 10��6J    �� RadiusX$ 10��6W    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5   "      
BlurRadius$ 20Q�63      Color$ 	#FFDEDEDE��6C      RenderingBias$ Quality=�6U      ShadowDepth$ 1Q�6m   5      � 5      $��25q�6   $	��120��6+   .+�5       � $��35��6#   $��50��6.   ���	#FFFFAF24$
��Left=�6Q   $	��Top=�6l   $
��20 0q�6�    5!   "     5"   &   $ 20Q�67   $ 	#FFECECEC��6G   $ Quality=�6Y   $ 1Q�6q   .+�5$   "   '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$
	 Cart=�6:   $��Center=�6F   $��Bottom=�6c   $��5q�6~   
�������$��20��6�   $��20��6�   5%      �� 5&      $��Sipariş Sayısı��6(   $��Right=�6>   $��Champagne & Limousines)�6Z   $��5q�6�   $	��Top=�6�   
�������6�   �� 5'      
 �� Orientation$
 
Horizontal=�6)   $��Right=�6B   $	��Top=�6^   $��10 30q�6v   .+�5(   "   �� -   5        $��txtCartCount��5(   6   $��75��6,   $��Champagne & Limousines)�6J   $��Center=�6r   
�������$��40(�6�   5)      �� 5*      $
 
Horizontal=�6)   $��Bottom=�6B   $��20q�6]    � Cursor$
 Hand��6i   .+�5+   "     $	 Information=�6:   
���  ��$��10��6^   $��10��6i   $��Center=�6u   $	��5 0q�6�   �� 5,   "   $+��%Aktif Sipariş Sayısını Gösterir.��6,   $��10(�6T   
�������6b   5-      5.      5/      � 50      $��1��6   .+�51      �� $	��120��6$   $��20q�61   
�������$ 10��6J   $ 10��6W    52        53   "   $ 20Q�63   $ 	#FFDEDEDE��6C   $ Quality=�6U   $ 1Q�6m   55      � 56      $��25q�6   $	��120��6+   .+�57      � $��35��6#   $��50��6.   ���	#FF41A43C$
��Left=�6Q   $	��Top=�6l   $
��20 0q�6�    58   "     59   &   $ 20Q�67   $ 	#FFECECEC��6G   $ Quality=�6Y   $ 1Q�6q   .+�5;   "     $	 
TableChair=�6:   $��Center=�6L   $��Bottom=�6i   $��5q�6�   
�������$��20��6�   $��20��6�   5<      �� 5=      $��Masa Sayısı��6(   $��Right=�6;   $��Champagne & Limousines)�6W   $��5q�6   $	��Top=�6�   
�������6�   �� 5>      $
 
Horizontal=�6)   $��Right=�6B   $	��Top=�6^   $��10 30q�6v   .+�5?   "   �� -   5        $��txtTableCount��5?   6   $��75��6,   $��Champagne & Limousines)�6K   $��Center=�6s   
�������$��40(�6�   5@      �� 5A      $
 
Horizontal=�6)   $��Bottom=�6B   $��20q�6]   $
 Hand��6i   .+�5B   "     $	 Information=�6:   
���  ��$��10��6^   $��10��6i   $��Center=�6u   $	��5 0q�6�   �� 5C   "   $'��!Aktif Masa Sayısını Gösterir.��6,   $��10(�6Q   
�������6_   5D      5E      5F      � 5G      $��2��6   .+�5H      �� $	��120��6$   $��20q�61   
�������$ 10��6J   $ 10��6W    5I        5J   "   $ 20Q�63   $ 	#FFDEDEDE��6C   $ Quality=�6U   $ 1Q�6m   5L      � 5M      $��25q�6   $	��120��6+   .+�5N      � $��35��6#   $��50��6.   ���	#FFCF1F1F$
��Left=�6Q   $	��Top=�6l   $
��20 0q�6�    5O   "     5P   &   $ 20Q�67   $ 	#FFECECEC��6G   $ Quality=�6Y   $ 1Q�6q   .+�5R   "     $	 Music=�6:   $��Center=�6G   $��Bottom=�6d   $��5q�6   
�������$��20��6�   $��20��6�   5S      �� 5T      $��Müzik Sayısı��6(   $��Right=�6<   $��Champagne & Limousines)�6X   $��5q�6�   $	��Top=�6�   
�������6�   �� 5U      $
 
Horizontal=�6)   $��Right=�6B   $	��Top=�6^   $��10 30q�6v   .+�5V   "   �� -   5         ��Name$ txtMusicCount��5V   6   $��75��6,   $��Champagne & Limousines)�6M   $��Center=�6u   
�������$��40(�6�   5W      �� 5X      $
 
Horizontal=�6)   $��Bottom=�6B   $��20q�6]   $
 Hand��6i   .+�5Y   "     $	 Information=�6:   
���  ��$��10��6^   $��10��6i   $��Center=�6u   $	��5 0q�6�   �� 5Z   "   $)��#Aktif Müzik Sayısını Gösterir.��6,   $��10(�6R   
�������6`   5[      5\      5]      � 5_      $��1��6   $��3��6(   $��3��69   $��Center=�6M   $	��580��6j   $	��450��6v   .+�5`      � 
�������$��20 50 20 20q�62    J� OpacityMask 5a      !� 5b   "    !� Visual 6.   ��  �� ElementName$ BorderG1��.+�5d      �� -   5         ��Name$ BorderG1��5d   %    �� CornerRadius$ 5��67   
�������6H   5e      � 5f      $��50 20 50 150q�6    5g      !� 5h   "    6.   �� $ BorderG2��.+�5j      �� -   5        $ BorderG2��5j   %   $ 15��67   ���	#FF3400516I   5  /De.TorstenMandelkow.MetroChart.RadialGaugeChart  5l      .  (De.TorstenMandelkow.MetroChart.ChartBase   
ChartTitle$ Grafik��6P      ChartSubTitle$  ��6d   $
��Bold)�6u   
�������$��	0,-30,0,0q�6�   ��6:   Z�    Series 5n   &   0  *De.TorstenMandelkow.MetroChart.ChartSeries     DisplayMember$ Titulo��5o   )      SeriesTitle$ Consumo��5q   )      ValueMember$ Porcentagem��5r   )   $��Center=�6C   ��5p   )   ��  �� Path$ Consumo�5r   C   5t      5u      5v      5w      5x      5y      5z      5{      