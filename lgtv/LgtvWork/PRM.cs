using System;
using System.Collections.Generic;

namespace com.lg.tv
{
	public enum HPRM
	{
		none,
		dtv_wifirc,
		command,
		auth,
		evt,
		/*arrayOfreq_type[0] = NOVALUE;
      arrayOfreq_type[1] = command;
      arrayOfreq_type[2] = event;
      arrayOfreq_type[3] = auth;*/
	}
	public class PRM
	{
		static Dictionary <String, HPRM> h1 = new Dictionary <String, HPRM> (){ 
			{"NOVALUE",HPRM.none},
			{"command",HPRM.command},
			{"event",HPRM.evt},
			{"auth",HPRM.auth},
			{"dtv_wifirc",HPRM.dtv_wifirc},

		};
		static Dictionary<HPRM, String> h2 = new Dictionary<HPRM,String> (){
			{HPRM.none,"/hdcp/api/dtv_wifirc"},
			{HPRM.dtv_wifirc,"/hdcp/api/dtv_wifirc"},
			{HPRM.command,"/hdcp/api/dtv_wifirc"},
			{HPRM.evt,"/hdcp/api/event"},
			{HPRM.auth,"/hdcp/api/auth"}
		};
		/*this.m_strURI = "/hdcp/api/dtv_wifirc";
      continue;
      this.m_strURI = "/hdcp/api/event";
      continue;
      this.m_strURI = "/hdcp/api/auth";
*/
		public PRM ()
		{

		}
		public String this [String s] {
			get {
				HPRM e = h1 [s.ToLower ()];
				return h2 [e];
			}


		}

	}
}

