using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;

namespace com.lg.tv
{
	/// <summary>
	/// a flow.
	/// handle tvinfo data and control actions in a single flow 
	/// </summary>
	public partial class LifeTime
	{

		public  TVInfo tv { get; set; }
		public class DestInfo : TVInfo
		{

		}
		static LifeTime _i = null;
		public static LifeTime getInstance ()
		{
			if (_i == null) {
				_i = new LifeTime ();
			}
			return _i;
		}

		internal LgTVRemoteUDPRequest getUDPRequest ()
		{
			return new LgTVRemoteUDPRequest ()
           {
           };
		}

		internal  TVInfo GetDestInfo ()
		{
			return tv;
		}

		/// <summary>
		///  wait 2000 ms
		/// </summary>
		public static void UpdateLoop (String oldIp, String newIp)
		{
			EventRequest.requestUpdate (LifeTime.getInstance ().GetDestInfo (), oldIp, newIp);
			System.Threading.Thread.Sleep (2000);
		}
	}
}
