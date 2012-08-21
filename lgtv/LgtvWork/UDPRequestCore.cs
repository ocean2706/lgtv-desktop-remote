using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using System.Net;

namespace com.lg.tv
{
	public class UDPRequestCore
	{
		public String Ip { get; set; }
		public String Port { get; set; }

		UdpClient UDPClient {
			get;
			set;
		}

		public void NetSetup ()
		{
			IPAddress ipa = IPAddress.Parse (Ip);
			IPEndPoint ipe = new IPEndPoint (ipa, Convert.ToInt32 (Port));

			this.UDPClient = new UdpClient ();
			this.UDPClient.Connect (ipe);
			//this.UDPClient.Connect (ipe);
		}
		public void Send (byte[] data)
		{

			this.UDPClient.Send (data, data.Length);

		}
	}
}
