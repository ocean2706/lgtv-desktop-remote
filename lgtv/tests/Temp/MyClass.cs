using System;
using com.lg.tv;

namespace Temp
{
	public class MyClass
	{
		public static int lastMouseX = 0;
		public static int lastMouseY = 0;
		public static void Main (string[] args)
		{
			int y = 0;
			LgTvMouseMoveController mm = LgTvMouseMoveController.getInstance ();
			mm.init (new TVInfo (){
				IP="192.168.1.65",
				SESSIONID="114859659"
			}
			); 
			//mm.AuthRequestSession ();
			//String s = Console.ReadLine ();
			String s = "DDRVTF";
			mm.AuthConfirmTVCode (s);
			mm.DoMouseAction (MouseAction.SHOW);
			bool stop = false;
			while (!stop) {
				ConsoleKeyInfo kbd = System.Console.ReadKey ();
				if (kbd.Key != ConsoleKey.Q) {
					System.Console.Write (Enum.GetName (typeof(ConsoleKey), kbd.Key));

					if (kbd.Key == ConsoleKey.UpArrow) {

						mm.DoMouseAction (MouseAction.UP);
						//CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
					}
					if (kbd.Key == ConsoleKey.DownArrow) {
						//lastMouseY = lastMouseY + 5;
						//mm.MouseMove (lastMouseX, lastMouseY);
						mm.DoMouseAction (MouseAction.DOWN);
						//CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
					}
					if (kbd.Key == ConsoleKey.LeftArrow) {
						//lastMouseX = lastMouseX - 5;
						//mm.MouseMove (lastMouseX, lastMouseY);
						mm.DoMouseAction (MouseAction.LEFT);
						//CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
					}
					if (kbd.Key == ConsoleKey.RightArrow) {
						//lastMouseX = lastMouseX + 5;
						//CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
						mm.DoMouseAction (MouseAction.RIGHT);
					}
					if (kbd.Key == ConsoleKey.Enter) {
						mm.DoMouseAction (MouseAction.CLICK);
					}

				} else {
					stop = true;
				}
			}
//			for (int i=0; i<100; i++) {
//				mm.MouseMove (i, y++);
//			}
//			TVInfo tv = new TVInfo (){ };
//
//			System.Console.WriteLine ("Input tv ip(@todo autodetect");
//			tv.IP = Console.ReadLine ();
//			if (String.IsNullOrEmpty (tv.IP)) {
//				tv.IP = "192.168.1.65";
//			}
//			decimal lastMouseX = 0;
//			decimal lastMouseY = 0;
//
//			///////////////////////
//			/// 
//			/// 
//			/// 
//			/// //////////////////
//			/// 
//			/// 
//
//			decimal LGTVX = 1920;
//			decimal LGTVY = 1080;
//
//			lastMouseX = LGTVX / 2;
//			lastMouseY = LGTVY / 2;
//			try {
//
//
//				//create  notify tv about a new auth request 
//				CTVControl.requestAuthKey (tv.IP);
//				/// read the keycode from keyboard
//				Console.WriteLine ("Enter the pair code from tv");
//				String keycodeConfirm = System.Console.ReadLine (); // wait until 
//
//				String[] result = CTVControl.requestAuthSession (tv.IP, keycodeConfirm);
//				tv.TIMEOUT = result [1];
//				tv.SESSIONID = result [0];
//				System.Console.WriteLine ("Session id:" + tv.SESSIONID);
//				bool stop = false;
//				// show mouse !!!
//				LifeTime.getInstance ().tv = tv;
//				CTVControl.OnMouseStart (); 
//				while (!stop) {
//					ConsoleKeyInfo kbd = System.Console.ReadKey ();
//					if (kbd.Key != ConsoleKey.Q) {
//						System.Console.Write (Enum.GetName (typeof(ConsoleKey), kbd.Key));
//
//						if (kbd.Key == ConsoleKey.UpArrow) {
//
//							lastMouseY += 5;
//							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
//						}
//						if (kbd.Key == ConsoleKey.DownArrow) {
//							lastMouseY -= 5;
//							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
//						}
//						if (kbd.Key == ConsoleKey.LeftArrow) {
//							lastMouseX += 5;
//							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
//						}
//						if (kbd.Key == ConsoleKey.RightArrow) {
//							lastMouseY -= 5;
//							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
//						}
//
//					} else {
//						stop = true;
//					}
//				}
//			} catch (Exception ex) {
//				System.Console.WriteLine (ex.Message + " " + ex.StackTrace + " " + ex.Source);
//			}
		}
	}
}