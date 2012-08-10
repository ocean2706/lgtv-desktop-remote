using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class TVInfo
	{
		public String m_strIP {
			get { return this.IP;}
			set {}
		}

		public string m_strSessionID {
			get { return this.SESSIONID;}
			set {}
		}
		public string TIMEOUT {
			get;
			set;
		}

		public String IP { get; set; }
		public String SESSIONID { get; set; }
		public int HTTPPORT { get; set; }
 

		public TVInfo ()
		{
 this.HTTPPORT = 8080;
			this.UDPPORT = 7070;
		}
    
		public  int UDPPORT { get; set; }
	}
}
