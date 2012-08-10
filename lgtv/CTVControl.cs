using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public partial class CTVControl
	{
		/*
         *   // Field descriptor #10 I
          public static final int ACTION_MASK = 255;
  
          // Field descriptor #10 I
          public static final int ACTION_DOWN = 0;
  
          // Field descriptor #10 I
          public static final int ACTION_UP = 1;
  
          // Field descriptor #10 I
          public static final int ACTION_MOVE = 2;
  
          // Field descriptor #10 I
          public static final int ACTION_CANCEL = 3;
  
          // Field descriptor #10 I
          public static final int ACTION_OUTSIDE = 4;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_DOWN = 5;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_1_DOWN = 5;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_2_DOWN = 261;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_3_DOWN = 517;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_UP = 6;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_1_UP = 6;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_2_UP = 262;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_3_UP = 518;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_ID_MASK = 65280;
  
          // Field descriptor #10 I
          public static final int ACTION_POINTER_ID_SHIFT = 8;
  
          // Field descriptor #10 I
          public static final int EDGE_TOP = 1;
  
          // Field descriptor #10 I
          public static final int EDGE_BOTTOM = 2;
  
          // Field descriptor #10 I
          public static final int EDGE_LEFT = 4;
  
          // Field descriptor #10 I
          public static final int EDGE_RIGHT = 8;*/
		/// <summary>
		/// send mouse move event
		/// </summary>
		public static void OnMouseMove (decimal dx, decimal dy)
		{
			LifeTime.getInstance ().getUDPRequest ().HandleTouchMove (scalePhone2TV (dx), dy);
		}
		/// <summary>
		/// send hidde cursor. Required ?
		/// </summary>
		public static void OnMouseEnd ()
		{

			EventRequest.requestCursorVisible (LifeTime.getInstance ().GetDestInfo (), "false"); // hide the cursor
		}
		public static void OnMouseStart ()
		{
			EventRequest.requestCursorVisible (LifeTime.getInstance ().GetDestInfo (), "true"); // show the cursor
		}
        

		/// <summary>
		/// send onclick
		/// </summary>
		public static void OnMouseClick ()
		{

			//Log.i("onSingleTapUp called", Integer.toString(paramMotionEvent.getAction()));

			commandRequest.requestTouchClick (LifeTime.getInstance ().GetDestInfo (), Res.g () ["key_code_cursor_ok"]);


		}

		private static decimal scalePhone2TV (decimal dx)
		{
			return dx * 683 / 450;
		}

		public int nDeltaX { get; set; }

		public int nDeltaY { get; set; }
		/// <summary>
		/// query the state of tv UI
		/// </summary>
		/// <returns></returns>
		public static int GetContextUiState ()
		{
			return QueryRequest.GetInitUIState (LifeTime.getInstance ().GetDestInfo ());
		}
		/* navi btns
         * ButtonInfo[] arrayOfButtonInfo = new ButtonInfo[9];
     arrayOfButtonInfo[0] = new ButtonInfo(2131230761, 2131099773);
     arrayOfButtonInfo[1] = new ButtonInfo(2131230762, 2131099790);
     arrayOfButtonInfo[2] = new ButtonInfo(2131230764, 2131099787);
     arrayOfButtonInfo[3] = new ButtonInfo(2131230763, 2131099786);
     arrayOfButtonInfo[4] = new ButtonInfo(2131230766, 2131099788);
     arrayOfButtonInfo[5] = new ButtonInfo(2131230756, 2131099791);
     arrayOfButtonInfo[6] = new ButtonInfo(2131230757, 2131099792);
     arrayOfButtonInfo[7] = new ButtonInfo(2131230758, 2131099793);
     arrayOfButtonInfo[8] = new ButtonInfo(2131230759, 2131099794);
         *
 1099773 7f06007d
 1099790 7f06008e
 1099787 7f06008b
 1099786 7f06008a
 1099788 7f06008c
 1099791 7f06008f
 1099792 7f060090
 1099793 7f060091
 1099794 7f060092
         */
		/*MM_buttons */
		/*
        arrayOfButtonInfo[0] = new ButtonInfo(2131230749, 2131099795);
    arrayOfButtonInfo[1] = new ButtonInfo(2131230750, 2131099796);
    arrayOfButtonInfo[2] = new ButtonInfo(2131230751, 2131099797);
    arrayOfButtonInfo[3] = new ButtonInfo(2131230752, 2131099798);
    arrayOfButtonInfo[4] = new ButtonInfo(2131230753, 2131099799);
    arrayOfButtonInfo[5] = new ButtonInfo(2131230754, 2131099800);
    arrayOfButtonInfo[6] = new ButtonInfo(2131230755, 2131099801);
    arrayOfButtonInfo[7] = new ButtonInfo(2131230756, 2131099791);
    arrayOfButtonInfo[8] = new ButtonInfo(2131230757, 2131099792);
    arrayOfButtonInfo[9] = new ButtonInfo(2131230758, 2131099793);
    arrayOfButtonInfo[10] = new ButtonInfo(2131230759, 2131099794);
        */ 

		/// <summary>
		/// Raises the button press event.
		/// </summary>
		/// <param name='keyCode'>
		/// Key code.
		/// </param>
		public static void OnBtnPress (int keyCode)
		{
			commandRequest.requestKeyInput (LifeTime.getInstance ().GetDestInfo (), ResMap.sv (keyCode));
		}
		/// <summary>
		/// Raises the mute sound event.
		/// </summary>
		public static void OnMuteSound ()
		{
			commandRequest.requestKeyInput (LifeTime.getInstance ().GetDestInfo (), ResMap.sv (2131099772));// CTVControl_ChVol_Piker.this.getResources().getString(2131099772));
		}
		/// <summary>
		/// Raises the show menu event.
		/// </summary>
		public void OnShowMenu ()
		{
			//@todo switch to touchpad menu and activate the touchpad
			commandRequest.requestKeyInput (LifeTime.getInstance ().GetDestInfo (), ResMap.sv (2131099773));// CTVControl_ChVol_Piker.this.getResources().getString(2131099773));
		}
		/// <summary>
		/// change channel using updown
		/// </summary>
		/// <param name="updown"></param>
		public static void OnChanChange (int updown)
		{
			switch (updown) {
			case 1:
				LifeTime.getInstance ().getUDPRequest ().HandlekeyInput (ResMap.sv (2131099778));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099778)));
				break;
			case 2:
				LifeTime.getInstance ().getUDPRequest ().HandlekeyInput (ResMap.sv (2131099779));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099779)));
				break;
			}
		}
		/// <summary>
		/// Raises the vol change event.
		/// </summary>
		/// <param name='updown'>
		/// Updown.
		/// </param>
		public static void OnVolChange (int updown)
		{
			switch (updown) {
			case 1:
				LifeTime.getInstance ().getUDPRequest ().HandlekeyInput (ResMap.sv (2131099779));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099779)));
				break;
			case 2:
				LifeTime.getInstance ().getUDPRequest ().HandlekeyInput (ResMap.sv (2131099778));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099778)));
				break;
			}
		}
		public static void PowerOffTV ()
		{
			LifeTime.getInstance ().getUDPRequest ().HandlekeyInput (ResMap.sv (2131099761));//Integer.parseInt(this.val$cxtFrom.getResources().getString(2131099761)));
			ByeByeReceiver.sendBroadcastByeBye (false);
		}

		///numpads
		///
		/*
       /// arrayOfButtonInfo[0] = new ButtonInfo(2131230784, 2131099762);
    arrayOfButtonInfo[1] = new ButtonInfo(2131230774, 2131099763);
    arrayOfButtonInfo[2] = new ButtonInfo(2131230775, 2131099764);
    arrayOfButtonInfo[3] = new ButtonInfo(2131230776, 2131099765);
    arrayOfButtonInfo[4] = new ButtonInfo(2131230777, 2131099766);
    arrayOfButtonInfo[5] = new ButtonInfo(2131230778, 2131099767);
    arrayOfButtonInfo[6] = new ButtonInfo(2131230779, 2131099768);
    arrayOfButtonInfo[7] = new ButtonInfo(2131230780, 2131099769);
    arrayOfButtonInfo[8] = new ButtonInfo(2131230781, 2131099770);
    arrayOfButtonInfo[9] = new ButtonInfo(2131230782, 2131099771);
    arrayOfButtonInfo[10] = new ButtonInfo(2131230783, 2131099774);
    arrayOfButtonInfo[11] = new ButtonInfo(2131230785, 2131099775);
    arrayOfButtonInfo[12] = new ButtonInfo(2131230786, 2131099776);
    arrayOfButtonInfo[13] = new ButtonInfo(2131230787, 2131099777);
       */
		/// <summary>
		/// if the tv require keyboard input, the application can 
		/// do some action ( show a textbox input where the user can insert data, etc ).
		/// 
		/// </summary>
		public EventHandler TVCallBackKeyboardRequest; 
		/// <summary>
		/// send colected string as keyboard input to tv
		/// </summary>
		/// <param name="data"></param>
		public static void SendKeyboardString (String data)
		{
			LifeTime.getInstance ().getUDPRequest ().HandleTextInput (data);
		}

		public static void SendGotoNetcast ()
		{
			commandRequest.requestKeyInput (LifeTime.getInstance ().GetDestInfo (), ResMap.sv (2131099810));
		}

		static string m_strSession {
			get;
			set;
		}

		static string m_strTimeout {
			get;
			set;
		}
		/// <summary>
		/// Requests the auth session.
		/// Confirm the session token to comunicate with the server and obtain the session to use
		/// </summary>
		/// <returns>
		/// The auth session.
		/// </returns>
		/// <param name='paramString1'>
		/// Parameter string1.
		/// </param>
		/// <param name='paramString2'>
		/// Parameter string
		/// </param>
		public static String[] requestAuthSession (String ip, String keycodeConfirm)
		{
			String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>" + keycodeConfirm + "</value>" + "</auth>";
			HTTPPostRequest localHTTPPostRequest = new LGHTTPPostRequest ();
			localHTTPPostRequest.setRequestType ("auth");
			localHTTPPostRequest.setTargetIP (ip);
			localHTTPPostRequest.setEntity (str1);
			Object localObject = null;
			try {
				String str3 = localHTTPPostRequest.execute ();
				localObject = str3;
				System.Console.WriteLine ("TVResponse:" + str3);
				String str2 = HTTPPostRequest.parseElement (localObject, "HDCPError");
				String detail = HTTPPostRequest.parseElement (localObject, "HDCPErrorDetail");
				m_strSession = HTTPPostRequest.parseElement (localObject, "session");
				m_strTimeout = HTTPPostRequest.parseElement (localObject, "timeout");
				return new String[]{m_strSession, m_strTimeout};
			} catch (URISyntaxException localURISyntaxException) {

				localURISyntaxException.printStackTrace ();
			}
			return new String[]{};
		}
		/// <summary>
		/// Requests the auth key.
		/// The key will be used for confirmation
		/// The effect is - a popup will be shown on tv with a code that will be used to confirm and obtain the session id
		/// </summary>
		/// <returns>
		/// The auth key.
		/// </returns>
		/// <param name='paramString'>
		/// Parameter string.
		/// </param>
		public static String requestAuthKey (String ip)
		{
			HTTPPostRequest localHTTPPostRequest = new LGHTTPPostRequest ();
			localHTTPPostRequest.setRequestType ("auth");
			localHTTPPostRequest.setTargetIP (ip);
			localHTTPPostRequest.setEntity ("<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthKeyReq</type></auth>");
			Object localObject = null;
			try {
				String str = localHTTPPostRequest.execute ();
				localObject = str;
				return HTTPPostRequest.parseElement (localObject, "HDCPError");
			} catch (URISyntaxException localURISyntaxException) {
      
				localURISyntaxException.printStackTrace ();
			}
			return "-1";
		}
      
	}
}
