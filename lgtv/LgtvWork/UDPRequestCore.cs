using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class UDPRequestCore
	{
        public String Ip { get; set; }
        public String Port { get; set; }
        public virtual  byte[] Send(byte[] data)
        {
            return data;
        }
	}
}
