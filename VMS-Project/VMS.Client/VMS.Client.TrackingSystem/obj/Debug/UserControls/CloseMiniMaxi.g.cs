﻿#pragma checksum "..\..\..\UserControls\CloseMiniMaxi.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "B0585816F0F7D97C5A6F39331B2F49D1"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Microsoft.Windows.Themes;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace VMS.Client.TrackingSystem.UserControls {
    
    
    /// <summary>
    /// CloseMiniMaxi
    /// </summary>
    public partial class CloseMiniMaxi : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 7 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal VMS.Client.TrackingSystem.UserControls.CloseMiniMaxi UserControl;
        
        #line default
        #line hidden
        
        
        #line 291 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Grid grdLayoutRoot;
        
        #line default
        #line hidden
        
        
        #line 292 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Grid grdBtn;
        
        #line default
        #line hidden
        
        
        #line 296 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.StackPanel stkpBtn;
        
        #line default
        #line hidden
        
        
        #line 298 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Button btnMinimize;
        
        #line default
        #line hidden
        
        
        #line 302 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Grid grdMinimize;
        
        #line default
        #line hidden
        
        
        #line 304 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Shapes.Rectangle bgMinimize;
        
        #line default
        #line hidden
        
        
        #line 318 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Primitives.ToggleButton togbtnMaximize;
        
        #line default
        #line hidden
        
        
        #line 322 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Button btnClose;
        
        #line default
        #line hidden
        
        
        #line 323 "..\..\..\UserControls\CloseMiniMaxi.xaml"
        internal System.Windows.Controls.Grid grdClose;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/VMS.Client.TrackingSystem;component/usercontrols/closeminimaxi.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\UserControls\CloseMiniMaxi.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.UserControl = ((VMS.Client.TrackingSystem.UserControls.CloseMiniMaxi)(target));
            return;
            case 2:
            this.grdLayoutRoot = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            this.grdBtn = ((System.Windows.Controls.Grid)(target));
            return;
            case 4:
            this.stkpBtn = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 5:
            this.btnMinimize = ((System.Windows.Controls.Button)(target));
            
            #line 299 "..\..\..\UserControls\CloseMiniMaxi.xaml"
            this.btnMinimize.Click += new System.Windows.RoutedEventHandler(this.btnMinimize_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.grdMinimize = ((System.Windows.Controls.Grid)(target));
            return;
            case 7:
            this.bgMinimize = ((System.Windows.Shapes.Rectangle)(target));
            return;
            case 8:
            this.togbtnMaximize = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 314 "..\..\..\UserControls\CloseMiniMaxi.xaml"
            this.togbtnMaximize.Click += new System.Windows.RoutedEventHandler(this.togbtnMaximize_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.btnClose = ((System.Windows.Controls.Button)(target));
            
            #line 319 "..\..\..\UserControls\CloseMiniMaxi.xaml"
            this.btnClose.Click += new System.Windows.RoutedEventHandler(this.btnClose_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.grdClose = ((System.Windows.Controls.Grid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
