   M S B A M L   `   `   `  ����a  ]PresentationFramework.Luna, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.LunaMicrosoft.Windows.Themes  5      a ]PresentationFramework.Aero, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes 5	       VMS.Client.TrackingSystemB   <VMS.Client.TrackingSystem.UserControls.ComboboxSearchControl   5      U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     8x,http://schemas.microsoft.com/winfx/2006/xaml    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5      mMicrosoft_Windows_ThemesJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Luna    5      nMicrosoft_Windows_Themes1Jclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero    5	      -   5          >�Name$  UserControl��5       � 	Resources 5         ComboBoxFocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels �� 
TargetType " ComboBoxTransparentButtonStyle �� 
TargetType � ColumnDefinitions	 z� SharedSizeGroup
 �� Orientation J� Opacity �� Stretch  ComboBoxEditableTextBox ��Name  ComboBoxEditableTemplate �Name �Name � AllowsTransparency �� Path �� RelativeSource5   /Microsoft.Windows.Themes.SystemDropShadowChrome  Name �� MaxDropDownHeight � ActualWidth   Color ��Name-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation,  &Microsoft.Windows.Themes.ListBoxChrome  Name   
Background   BorderBrush ��Name �� 
IsReadOnly d� 	IsChecked �� Mode  �� Triggers! P� Property" P� Value# �� 
TargetName$ P� 
SourceName  MySearchVMSComboStyle% �� SelectionBoxItem& �� SelectionBoxItemTemplate' ]� 
Conditions( �� Property) �� Value* �� Triggers��%�  &	        &	 �     &	 n    &	 A    7  7  &	 `    7   7  7  �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� 
���   �$	 1 2R�5   $   $��1��5   $   $��4,4,21,4q�5   $    . 5   $   5      5      5      �� 5   
   " d�5   
   .�5      ��  � ��$ 0��5      �� 5       � ��$ 0��5      �� 5        � ��$
 Auto��5!      �� 5"       � ��$
 Auto��5#      �� 5$       � ��
 ���� 5%      �� 5&       � |� .  5'      �� 5(       �@��	ClickMode$ Press=�5)      �� 5*       � �� 5+      �� 5,      " d�6   .R�5-      �  . #��z��5.      $��0,0,0,0q�68    5/      �� 50      $��* �6!   �� 51      $
��Auto �6!   $	 ComboBoxButton��52      .+�54      �� $
 
Horizontal=�6   .+�55      �� $��..\Images\Find.png��6   $��17.89��62   $��17.89��6A   �� 56      $ 1Q�57      $��0,0,2,0q�6   ._�58      F� ���	#FF000000$
 Fill=�59      @���00��
�@!C"Ȝ
@5�a�]�@gDio�@��V�{@����	�@	$��2,7,1,7q�5<      ��5:      Z� 5<      5=      5>      5?      5@      5B      5C      �� 5D   
   " ��5E      .�5F      ��  �@�OverridesDefaultStyle . 5G      �� 5H       �@J�	AllowDrop . 5I      �� 5J       � ��$ 0��5K      �� 5L       � ��$ 0��5M      �� 5N       �@�FocusVisualStyle 5O      Z� �� 5P       � �� 5Q      �� 5R      " ��6&   .R�5S      �� $ PART_ContentHost��6'   
������ |�.  $��Hidden=�5V   '   $��Hidden=�5W   '   5X      5Z      5[      �� 5\   
   " ��5]   
   .R�5_      � $ 	Placement��6    .  5a      �� 5b      �� 5c      $
��Auto �6   .+�5e      � $ 
PART_Popup��6    . $��Bottom=�5h      #��� .�5i      |�.  $��2��5k      ��5g      �� $ IsDropDownOpen� �� *TemplatedParent+.��5l        $
 Shdw��5n      #��z 5l   =   #��z 5m      $ Transparent��5o      ._�5p      �� $ DropDownBorder��6   #��� ��5q      #��� ��5r      $��1q�5s      ._�5t      �� .��5u      �� # z 6   $ 	Contained=�5v      5w      5x      5y      5z        5{      $ Border��64   $��2��5|      # z��5}      # z��5~      �� 5      $ PART_EditableTextBox��5�      #��z��5      8��  #��z��5�      #��z��5�       5�      �� $ 
IsReadOnly� �� *TemplatedParent+d� 5�      8�� ���	#FFD3D3D3$��1��5�      ��5�      Z�  5�      �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+��5�      Z� 5�      5�        5�      P� 5�      ! �@��HasItems" .  . �5�      �� $# DropDownBorder��5�       � ��$ 95��5�      5�      P� 5�      ! � {�" .  . �5�      �� # � ��5�       � ��5�      P� 5�      ! �@��
IsGrouping" . . �5�      ��  � �� .  5�      5�      P� 5�      $$ 
PART_Popup��5�      ! �@�HasDropShadow" . . �5�      �� $
# Shdw��5�       � ��$ 0,0,5,5q�5�      �� 5�      $
# Shdw��5�       �@ Color$ 	#71000000��5�      5�      5�      �� 5�   
   " ��5�   
   .�5�      ��  �@�FocusVisualStyle8   5�      �� 5�       � ��# � ��5�      �� 5�       � ��# � ��5�      �� 5�       � �� �	#FF7F9DB95�      �� 5�       � ��$ 1q�5�      �� 5�       � ��$ 1q�5�      �� 5�       � ��$
 Auto=�5�      �� 5�       � ��$
 Auto=�5�      �� 5�       � �� . 5�      �� 5�       � ��$ Center=�5�      �� 5�       � �� 5�      �� 5�      " ��6   .R�5�      � $ MainGrid��6    .  5�      �� 5�      �� 5�      $��0 �6!   .+�5�      � $ 
PART_Popup��5�      $��1,1,1,1q�5�       . $��Bottom=�5�      #��� .�5�      |�.  ��5�      �� $ IsDropDownOpen� �� *TemplatedParent+.��5�        $
 Shdw��5�      #��z 5�   @   #��z 5�      $ Transparent��5�      ._�5�      �� $ DropDownBorder��6   #��� ��5�      #��� ��5�      $��1q�5�      ._�5�      �� .��5�      �� # z 6"   $ 	Contained=�5�      5�      5�      5�      5�      d� 5�      8�� ���	#FFFFFFFF$��2��5�      ��5�      Z�  5�      �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+�� 5�      #��z��6    #��z��5�      $��Stretch=�5�      # z 5�      #��z% 5�      #��z& 5�      #��z��5�      5�        5�      ]� 5�      ' 5�      �� 5�      !( �@��IsSelectionBoxHighlighted) . 5�      �� 5�      ( �@��IsDropDownOpen) .  5�      ./�5�      �� # � ��5�       � ��5�      P� 5�      !! �@��IsSelectionBoxHighlighted" . 5�      P� 5�      $$ 
PART_Popup��5�      ! �@�HasDropShadow" . . �5�      �� $
# Shdw��5�       � ��$ 0,0,5,5q�5�      �� 5      $
# Shdw��5      �@ Color$ 	#71000000��5     5     P� 5     ! �@��HasItems" .  . �5     �� $# DropDownBorder��5      � ��$ 95��5     5	     P� 5
     ! � {�" .  . �5     �� # � ��5      � ��5     P� 5     ! �@��
IsGrouping" . . �5     ��  � �� .  5     5     5     5     * 5     P� 5     ! �@��
IsEditable" . . �5     ��  � �� .  5     �� 5      � ��$	 0,1q�5     �� 5      � ��8  5      5!     5#     5$     .��5&     � -   5        $ 
LayoutRoot��5&     .+�5'  
   �� -   5        $+ �� IsSynchronizedWithCurrentItem$
+ TrueY�5'     ���	#FFD3D3D3, � ToolTip$, 
Search VMS��5)     $��11(�5*     - �� 
IsEditable- . . �� Text$. 
Search VMS��5,     #���  5.     ���	#FF3D63945/     51     52     