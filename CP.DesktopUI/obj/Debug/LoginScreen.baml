   M S B A M L   `   `   `  ����G  CCP.DesktopUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CP.DesktopUICP.DesktopUI  5   	       CP.DesktopUI.LoginScreen   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:CP.DesktopUI     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.1.1361, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  62     � Title$  
Giriş Yap��5   	   $	��359��6   $	��364��6(    � WindowStartupLocation$ CenterScreen=�64    � WindowStyle$
 None=�6Y   $��14(�6l   ���#04c582.��5	      �� .+�5
   
   �� $��Right=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  -   5        $��4q�5   &      Kind$ CloseBox=�61   $��30��6A   
���  ��$��18��6�   5      �� 5   
   ���#2e3137 �� CornerRadius$ 20��6&   $��10,-3q�68   ._�5      �� $��20q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�66   .+�5      �� $��/Images/User.png��6   $��50��66   $��Center=�6B   5      �� 5      $��
Giriş Yap��6   
�������$��25(�6?   $��Center=�6M   �� 5      6   �� 5      $��Kullanıcı Adı��6   
�������60   �� 5      -   5        $��txtUserName��5      ���#545d6a
�������$��18(�6U   �� 5      $��Şifre��6   
�������6(   G� 5      -   5        $��txtPassword��5      ���#545d6a
�������$��18(�6Y   �� 5      $ 
Horizontal=�6   .+�5      �� -   5        $��btnClear��5      $��	0,10,4,10q�6.   ���#545d6a
�������$��18(�6i    J� RenderTransformOrigin$ 1.413,0.607&�6�   $��39��6�   $	��150��6�   .��5      �� $ 
Horizontal=�6%   .+�5        $��4q�66   $ Trash=�6A   $��25��6N   $��18��6Y   �� 5      �� 6)   $�Temizle��6-   6?   5      5      �� 5      -   5        $��	btnSubmit��5      $��	0,10,4,10q�6/   ���#545d6a
�������$��18(�6j   $ 1.413,0.607&�6�   $��39��6�   $	��141��6�   .��5       �� $ 
Horizontal=�6%   .+�5!        $��4q�66   $ Login=�6A   $��25��6N   $��18��6Y   �� 5"      
Giriş Yap63   5#      5$      5%      5(      5)      5*      5,      