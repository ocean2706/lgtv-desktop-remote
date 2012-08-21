using System;
using Gtk;

namespace LGTVDesktopGtkSharp
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			try {
				Application.Init ();
				MainWindow win = new MainWindow ();
				win.Show ();
				Application.Run ();
			} catch (Exception ex) {

			}
		}
	}
}
