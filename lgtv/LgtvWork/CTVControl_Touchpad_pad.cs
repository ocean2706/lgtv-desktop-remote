using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	/// <summary>
	/// handle mouse requests mode
	/// </summary>
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
		public void OnMouseMove (decimal dx, decimal dy)
		{
			LifeTime.getInstance ().getUDPRequest ().HandleTouchMove (scalePhone2TV (dx), dy);
		}
		/// <summary>
		/// send hidde cursor. Required ?
		/// </summary>
		public void OnMouseEnd ()
		{

			EventRequest.requestCursorVisible (LifeTime.getInstance ().GetDestInfo (), "false"); // hide the cursor
		}
		public void OnMouseStart ()
		{
			EventRequest.requestCursorVisible (LifeTime.getInstance ().GetDestInfo (), "true"); // show the cursor
		}
        

		/// <summary>
		/// send onclick
		/// </summary>
		public void OnMouseClick ()
		{

			//Log.i("onSingleTapUp called", Integer.toString(paramMotionEvent.getAction()));

			commandRequest.requestTouchClick (LifeTime.getInstance ().GetDestInfo (), Res.g () ["key_code_cursor_ok"]);


		}

		private decimal scalePhone2TV (decimal dx)
		{
			return dx * 683 / 450;
		}

		public int nDeltaX { get; set; }

		public int nDeltaY { get; set; }
		/// <summary>
		/// query the state of tv UI
		/// </summary>
		/// <returns></returns>
		public int GetContextUiState ()
		{
			return QueryRequest.GetInitUIState (LifeTime.getInstance ().GetDestInfo ());
		}
	}
}
