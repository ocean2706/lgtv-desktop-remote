#region License

// Copyright (c) 2011, ClearCanvas Inc.
// All rights reserved.
// http://www.clearcanvas.ca
//
// This software is licensed under the Open Software License v3.0.
// For the complete license, see http://www.clearcanvas.ca/OSLv3.0

#endregion

using ClearCanvas.Common;
using Gtk;

namespace ClearCanvas.ImageViewer.View.GTK
{
	/// <summary>
	/// Abstract base class for GTK-based views.  Any class that implements a view using GTK as the underlying
	/// GUI toolkit, and that intends to be compatible with .... must subclass this class.
	/// </summary>
	[GuiToolkit(GuiToolkitID.GTK)]
	public abstract class GtkView
	{
		public GtkView()
		{
			
		}
		
		public GuiToolkitID GuiToolkitID
		{
			get { return GuiToolkitID.GTK; }
		}
		
		///<summary>
		/// Returns the GTK widget that implements this view, allowing a parent view to insert
		/// the widget as one of its children.
		/// </summary>
		public abstract object GuiElement
		{
			get;
		}
	}
}
