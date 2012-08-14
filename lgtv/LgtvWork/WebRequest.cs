using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class WebRequest
	{
		protected PRM prm = new PRM ();
		protected String m_strEntity;
		protected String m_strTargetIP;
		protected String m_strURI;
		protected HTTPPost m_httpPost = new HTTPPost ();
	}
}
