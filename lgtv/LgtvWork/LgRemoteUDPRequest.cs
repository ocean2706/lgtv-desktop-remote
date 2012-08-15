using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class LgRemoteUDPRequest:UDPRequest
	{
        protected TVInfo __tvi = new TVInfo();

        protected TVInfo tv {
            get {
                return __tvi;
        }
            set {
                __tvi = value;
                this.Ip = __tvi.IP;
                this.Port = __tvi.HTTPPORT.ToString();
            }
        }

        internal void SetTvInfo(TVInfo tv)
        {
            this.tv = tv;
        }
        internal void HandleTouchMove(int x, int y)
        {
        }
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
