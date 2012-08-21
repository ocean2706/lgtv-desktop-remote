using System;
using Gtk;
using Gdk;
using com.lg.tv;

public partial class MainWindow: Gtk.Window
{
	void WriteLine (String s)
	{
		textview1.Buffer.Text += s + "\r\n";
	}
	void OnMouseClick (object o, ButtonPressEventArgs args)
	{

		LastMouseEvent = args;
		LastMouseEventTime = DateTime.Now;
		WriteLine ("MouseDown" + args.Event.Button.ToString ());
	}
	void OnMouseRelease (object o, ButtonReleaseEventArgs args)
	{

		if ((LastMouseEvent is ButtonPressEventArgs)
			&& ((DateTime.Now - LastMouseEventTime).Milliseconds < 1000)) {
			try {

				if (mm.Connected) {
					mm.DoMouseAction (MouseAction.CLICK);
				}
				return;
			} catch (Exception ex) {
				textview1.Buffer.Text = ex.Message + " " + ex.StackTrace;
			}
		}

		WriteLine ("MouseRelease" + args.Event.Button.ToString ());
	}

	LgTvMouseMoveController mm = null;


	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();


		drawingarea2.AddEvents ((int)EventMask.ButtonPressMask);

		drawingarea2.AddEvents ((int)EventMask.ButtonReleaseMask);
		drawingarea2.AddEvents ((int)EventMask.PointerMotionMask);

		drawingarea2.MotionNotifyEvent += new MotionNotifyEventHandler (OnPointerMotionEvent);
		drawingarea2.ButtonPressEvent += new ButtonPressEventHandler (OnMouseClick);
		drawingarea2.ButtonReleaseEvent += new ButtonReleaseEventHandler (OnMouseRelease);
		mm = LgTvMouseMoveController.getInstance ();

	}


	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	bool enabled {
		get;
		set;
	}

	protected System.Object LastMouseEvent = null;
	protected DateTime LastMouseEventTime = DateTime.Now;

	int dx = 0;
	int dy = 0;
	//|(int) EventMask.PointerMotionMask
	protected void OnPointerMotionEvent (object o, MotionNotifyEventArgs args)
	{
		if (enabled) {
			LastMouseEvent = args; // disable click;

			dx = (int)((args.Event.X - mm.lastX) * 1.27);
			dy = (int)((args.Event.Y - mm.lastY) * 1.27);
			WriteLine ("Move now" + dx.ToString () + "::" + dy.ToString () + " " + args.Event.X.ToString () + " " + mm.lastX.ToString ());
			mm.lastX = (int)args.Event.X;
			mm.lastY = (int)args.Event.Y;
			if (mm.Connected) {
				mm.MouseMove (dx, dy);
			}
		}
	}	
	protected void OnButton13Clicked (object sender, EventArgs e)
	{
		String ip = entry3.Text;
		mm.init (new TVInfo (){
				IP=ip,
				SESSIONID="114859659"
			}
		); 
		try {
			mm.AuthRequestSession ();
			textview1.Buffer.Text += "Enter the pair code and press pair button\r\n";
		} catch (Exception ex) {
			//String s = Console.ReadLine ();

			textview2.Buffer.Text += "Auth step 1 failed:" + ex.Message + " " + ex.StackTrace;
		}
	}	
	protected void OnButton14Clicked (object sender, EventArgs e)
	{
		String s = "DDRVTF";

		String pcode = entry4.Text;
		try {
			mm.AuthConfirmTVCode (pcode);
			textview2.Buffer.Text += "You are connected. If you need to, reconnect using steps above\r\n";
			mm.Connected = true;
		} catch (Exception ex) {
			textview2.Buffer.Text += "Auth step 2 failed:" + ex.Message + " " + ex.StackTrace;
		}
	}
	protected void OnButton16Clicked (object sender, EventArgs e)
	{
		WriteLine ("Send text " + entry5.Text);
		mm.SendText (entry5.Text);
	}	
	protected void OnButton2Clicked (object sender, EventArgs e)
	{
		WriteLine ("Clicked key " + (sender as Gtk.Button).Label);
		int key = BtnToKey ((sender as Gtk.Button).Label);
		//mm.SendKey (BtnToKey ((sender as Gtk.Button).Label));
	}

	/// <summary>
	/// Numeric Buttons to key.
	/// </summary>
	/// <returns>
	/// The to key.
	/// </returns>
	/// <param name='s'>
	/// S.
	/// </param>
	protected int BtnToKey (String s)
	{
		int i = int.Parse (s);
		int y = i + 16;
		if (i == 0) {
			y = 16;
		}
		return y;
	}
	protected void OnButton3Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton4Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton5Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton6Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton7Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton8Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton9Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton10Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}
	protected void OnButton11Clicked (object sender, EventArgs e)
	{
		OnButton2Clicked (sender, e);
	}	
	protected void OnNotebook1SwitchPage (object o, SwitchPageArgs args)
	{
		WriteLine ("On page " + args.PageNum.ToString ());
		switch (args.PageNum) {
		case 1:
			dx = 0;
			dy = 0;
			mm.lastX = 0;
			mm.lastY = 0;
			enabled = true;
			if (mm.Connected) {
				mm.DoMouseAction (MouseAction.SHOW);
			}
			break;
		default:
			try {
				enabled = false;
				// disable mouse
				if (mm.Connected) {
					mm.DoMouseAction (MouseAction.HIDE);
				}

			} catch {

			}
			break;
		}

	}



}
