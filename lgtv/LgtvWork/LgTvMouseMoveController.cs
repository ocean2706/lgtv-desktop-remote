using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace com.lg.tv
{
	public enum KeyCodeMenu
	{

		STATUSBAR=35,
		QMENU=69,
		HOMEMENU=67,
		PREMIUM=89,
		INSTALLMENU=207,
		FACTORY1=251,
		FACTORY2=255,
		left= 7,
		right= 6,
		up=64,
		down= 65,
		select1= 68,
		back=40,
		exit= 91,
		red= 114,
		green=113,
		yellow= 99,
		blue= 97,
		d3d=220,
		k0=16,
		k1= 17,
		k2= 18,
		k3= 19,
		k4= 20,
		k5= 21,
		k6= 22,
		k7= 23,
		k8= 24,
		k9= 25,
		underscore= 76,
		play= 176,
		pause= 186,
		fastforward= 142,
		rewind= 143,
		stop= 177,
		record= 189,
		volumeup=2,
		volumedown= 3,
		mute= 9,
		subtitlelanguage= 57,
	}
	public enum MouseAction
	{
		SHOW,
		UP,
		DOWN,
		LEFT,
		RIGHT,
		CLICK,
		HIDE
	}
	public class LgTvMouseMoveController
	{
		public bool Connected {
			get;
			set;
		}

		public bool MouseActive {
			get;
			set;
		}

		public int lastX = 0;
		public int lastY = 0;
		public void SendKey (int i)
		{
			byte[] b = CraftPacket (1, 4, i, null, null, null);
			if (Connected) {
				SendPacket (b);
			}
		}

		public void SendText (string text)
		{
//			cmd = [ 9, str.size ]
//  bytes = craft_packet( cmd[0],cmd[1], 0x01, nil, nil, str )
//  send_packet bytes
			byte[] b = CraftPacket (9, text.Length, 1, null, null, text);
			if (Connected) {
				SendPacket (b);
			}
		}
		private CTVControl ctrlr = new CTVControl ();
		private static LgTvMouseMoveController _instance = null;
		public static LgTvMouseMoveController getInstance ()
		{
			if (_instance == null) {
				_instance = new LgTvMouseMoveController ();
			}
			return _instance;
		}
		public  DateTime lgtv_mouse_last_moved = DateTime.Now;
		public const double mouse_incr_multiplier = 1.27;
		public const int mouse_incr_reset_thr = 1500; // seconds
		public const int mouse_move_start_incr = 15; // start incr
		public int lgtv_mouse_move_incrc = 5;
		public int lgtv_mouse_move_incr;
		public int MoveX = 0;
		public int MoveY = 0;
		public int incr = 0;
		public int CalcIncr ()
		{
			///$incr = 0
//def calc_incr
//  if (Time.new - $lgtv[:mouse_last_moved]) > $mouse_incr_reset_thr
//    $incr = $mouse_move_start_incr
//  else
//    # This should be limited
//    $incr = ($lgtv[:mouse_move_incr] * $mouse_incr_multiplier).to_i
//  end
//  $lgtv[:mouse_move_incr] = $incr
//  $lgtv[:mouse_last_moved] = Time.new
//  $db["#{$lgtv[:address]}"] = $lgtv # save
//end		
			TimeSpan x = (DateTime.Now - lgtv_mouse_last_moved);
			int xx = x.Milliseconds;
			System.Console.WriteLine ("LastTime" + xx.ToString ());
			if (xx > mouse_incr_reset_thr) {
				//was not moved 1.5 sec, reset
				incr = mouse_move_start_incr;
			} else {
				// moved
				incr = (int)(lgtv_mouse_move_incrc * mouse_incr_multiplier);
			}
			System.Console.WriteLine ("incrk " + incr.ToString ());
			lgtv_mouse_move_incr = incr;
			lgtv_mouse_last_moved = DateTime.Now;
			return lgtv_mouse_move_incr;

		}

			
		LgTVRemoteUDPRequest udp = new LgTVRemoteUDPRequest (); 
		public void init (TVInfo t)
		{
			this.tv = t;
			udp.SetTvInfo (tv);
		}
		public TVInfo tv { get; set; }

		public void DoMouseAction (MouseAction m)
		{
			CalcIncr ();
			switch (m) {
			case MouseAction.SHOW:

				MouseMove (0, 0);
				break;
			case MouseAction.LEFT:

				MouseMove (-incr, 0);
				break;
			case MouseAction.RIGHT:

				MouseMove (incr, 0);
				break;
			case MouseAction.UP:

				MouseMove (0, -incr);
				break;
			case MouseAction.DOWN:

				MouseMove (0, incr);
				break;
			case MouseAction.CLICK:
				ClickMouse ();
				break;
			case MouseAction.HIDE:
				EventRequest.requestCursorVisible (tv.IP, tv.SESSIONID, "false");
				break;
			}
		}


		public void MouseMove (int deltaX, int deltaY)
		{
//            def move_mouse px, py
//  cursor_show
//  cmd = [2,8] # move mouse
//  bytes = craft_packet( cmd[0], cmd[1], px, py) 
//  i = 0
//  n = 4
//  while i < n
//    send_packet bytes
//    i += 1
//    sleep 0.1
//  end
//end
			CursorShow ();

			byte[] bytes = CraftPacket (2, 8, deltaX, deltaY, null, null);
			if (Connected) {
				for (var i=0; i<4; i++) {
					SendPacket (bytes);
					Thread.Sleep (10);
				}
			}
            

		}
		public void AuthRequestSession ()
		{
			CTVControl.requestAuthKey (tv.IP);

		}
		public String AuthConfirmTVCode (String confirm)
		{
			String[] sr = CTVControl.requestAuthSession (tv.IP, confirm);
			tv.SESSIONID = sr [0];
			tv.TIMEOUT = sr [1];
			return tv.SESSIONID;
		}
		public void CursorShow ()
		{
			// show cursor;
			//EventRequest.requestCursorVisible (tv.IP, tv.SESSIONID, "false");
			EventRequest.requestCursorVisible (tv.IP, tv.SESSIONID, "true");
		}

		public byte[] CraftPacket (int cmd, int attrByteLen, int a, int? b, int? c, string str)
		{
			long sessionid = long.Parse (tv.SESSIONID);
			List<byte> lst = new List<byte> ();
			lst.AddRange (new byte[] { 0, 0, 0, 0 }); // first empty crc32 sum

			lst.AddRange (Utils.prepare_4bytes (sessionid));
			lst.AddRange (Utils.prepare_2bytes (cmd));
			lst.AddRange (Utils.prepare_4bytes (attrByteLen));
			lst.AddRange (Utils.prepare_4bytes (a));
			if (b.HasValue || c.HasValue) {
				if (b.HasValue) {
					lst.AddRange (Utils.prepare_4bytes ((long)b.Value));
				}
				if (c.HasValue) {
					lst.AddRange (Utils.prepare_4bytes ((long)b.Value));
				}
			} else if (!string.IsNullOrEmpty (str)) {
				lst.AddRange (Encoding.UTF8.GetBytes (str));
				lst.AddRange (Encoding.UTF8.GetBytes ("00"));

			}
			byte[] ret = lst.ToArray ();
			uint crcc = CRC32.Compute (ret);// ZLibNet.CrcCalculator.CaclulateCRC32 (ret);
			byte[] crc = Utils.prepare_4bytes ((long)crcc);

			int cnt = 0;
			foreach (byte bw in crc) {
				ret [cnt] = bw;
				cnt++;
			}





			return ret;
		}

        
		public void SendPacket (byte[] data)
		{
			udp.Send (data);
		}
		public void ClickMouse ()
		{
//			def click_mouse
//  cursor_show
//  cmd = [3,4]
//  bytes = craft_packet(cmd[0],cmd[1], 0x02)
//  send_packet bytes
//end

			byte[] bytes = CraftPacket (3, 4, 2, null, null, null);
			SendPacket (bytes);
		}
	}
}
