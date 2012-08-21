#region License

// Copyright (c) 2011, ClearCanvas Inc.
// All rights reserved.
// http://www.clearcanvas.ca
//
// This software is licensed under the Open Software License v3.0.
// For the complete license, see http://www.clearcanvas.ca/OSLv3.0

#endregion

using System;
using System.Collections.Generic;
using System.Text;
using ClearCanvas.Common;
using ClearCanvas.Desktop;
//using ClearCanvas.Desktop.View.WinForms;

namespace ClearCanvas.ImageViewer.View.GTK
{
	[ExtensionOf(typeof(ClearCanvas.ImageViewer.ImageWorkspaceViewExtensionPoint))]
	public class ImageWorkspaceView : GtkView, IWorkspaceView
	{
		//private ImageWorkspaceControl _imageWorkspaceControl;
		private ImageWorkspaceDrawingArea _imageWorkspaceControl;
		private ImageWorkspace _imageWorkspace;

		public ImageWorkspaceView()
		{
		}

		public void SetWorkspace(Workspace workspace)
		{
			_imageWorkspace = workspace as ImageWorkspace;
			Platform.CheckForInvalidCast(_imageWorkspace, "workspace", "ImageWorkspace");
		}

		public override object GuiElement
		{
			get 
			{
				if (_imageWorkspaceControl == null)
					//_imageWorkspaceControl = new ImageWorkspaceControl(_imageWorkspace);
					_imageWorkspaceControl = new ImageWorkspaceDrawingArea(_imageWorkspace);
	
				return _imageWorkspaceControl; 
			}
		}
	}
}
