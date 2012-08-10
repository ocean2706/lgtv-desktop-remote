using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace com.lg.tv
{
	public class HTTPPostRequest:WebRequest
	{


		internal void setRequestType (string p)
		{
			m_strURI = prm [p];
		}

		public void setTargetIP (String ip)
		{
			this.m_strTargetIP = ip;
		}

		internal void setEntity (string str1)
		{
			this.m_strEntity = str1;
		}

		internal string execute ()
		{
			this.m_httpPost.setHost ("http://" + this.m_strTargetIP + ":8080" + this.m_strURI);
			this.m_httpPost.setEntity (this.m_strEntity);
		
			return this.m_httpPost.execute ();
		}

		internal static string parseElement (object localObject, string p)
		{
//			String paramString1 = localObject.ToString ();
//			String str1 = "<" + p + ">";
//			String str2 = "</" + p + ">";
//			int i = paramString1.IndexOf (str1);
//			String str3;
//			if (i == -1) {
//				str3 = "";
//
//				return str3;
//			}
//			int j = i + str1.Length;
//			int k = paramString1.Substring (i).IndexOf (str2);
//			if (k == -1) {
//				str3 = "";
//				return str3;
//			}
//			k = j + k;
//			str3 = paramString1.Substring (j, k);
//			return str3;
			try {
				XmlDocument d = new XmlDocument ();
				d.LoadXml (localObject.ToString ());
				XmlNode x = d.SelectSingleNode ("//" + p);
				return x.InnerText;
			} catch {
				return "";
			}

		}
	}
}

