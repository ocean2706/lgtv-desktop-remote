using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class LgRemoteUDPRequest:UDPRequest
	{
		internal  void HandleTouchMove (decimal nDeltaX, decimal nDeltaY)
		{
			throw new NotImplementedException ();
		}

		internal  void HandlekeyInput (int keycode)
		{
			throw new NotImplementedException ();
		}
		internal void HandleTextInput (string data)
		{
			throw new NotImplementedException ();
		}
	}
}
