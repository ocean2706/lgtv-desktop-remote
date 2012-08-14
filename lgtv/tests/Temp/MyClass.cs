using System;
using com.lg.tv;

namespace Temp
{
	public class MyClass
	{
		public static void Main (string[] args)
		{
			TVInfo tv = new TVInfo (){ };

			System.Console.WriteLine ("Input tv ip(@todo autodetect");
			tv.IP = Console.ReadLine ();
			if (String.IsNullOrEmpty (tv.IP)) {
				tv.IP = "192.168.1.65";
			}
			decimal lastMouseX = 0;
			decimal lastMouseY = 0;

			///////////////////////
			/// 
			/// 
			/// 
			/// //////////////////
			/// 
			/// 

			decimal LGTVX = 1920;
			decimal LGTVY = 1080;

			lastMouseX = LGTVX / 2;
			lastMouseY = LGTVY / 2;
			try {


				//create  notify tv about a new auth request 
				CTVControl.requestAuthKey (tv.IP);
				/// read the keycode from keyboard
				Console.WriteLine ("Enter the pair code from tv");
				String keycodeConfirm = System.Console.ReadLine (); // wait until 

				String[] result = CTVControl.requestAuthSession (tv.IP, keycodeConfirm);
				tv.TIMEOUT = result [1];
				tv.SESSIONID = result [0];
				System.Console.WriteLine ("Session id:" + tv.SESSIONID);
				bool stop = false;
				// show mouse !!!
				LifeTime.getInstance ().tv = tv;
				CTVControl.OnMouseStart (); 
				while (!stop) {
					ConsoleKeyInfo kbd = System.Console.ReadKey ();
					if (kbd.Key != ConsoleKey.Q) {
						System.Console.Write (Enum.GetName (typeof(ConsoleKey), kbd.Key));

						if (kbd.Key == ConsoleKey.UpArrow) {

							lastMouseY += 5;
							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
						}
						if (kbd.Key == ConsoleKey.DownArrow) {
							lastMouseY -= 5;
							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
						}
						if (kbd.Key == ConsoleKey.LeftArrow) {
							lastMouseX += 5;
							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
						}
						if (kbd.Key == ConsoleKey.RightArrow) {
							lastMouseY -= 5;
							CTVControl.OnMouseHttpMove (Int32.Parse (lastMouseX.ToString ()), Int32.Parse (lastMouseY.ToString ()));
						}

					} else {
						stop = true;
					}
				}
			} catch (Exception ex) {
				System.Console.WriteLine (ex.Message + " " + ex.StackTrace + " " + ex.Source);
			}
		}
	}
}