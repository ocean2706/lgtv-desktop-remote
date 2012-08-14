using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;
using System.Security.Cryptography;
namespace com.lg.tv
{
    
	
	public class LgTvUDPMessage
	{
       

		/// <summary>
		/// build coresponding message from 
		/// http://sourceforge.net/apps/mediawiki/openautomation/index.php?title=LGconnectd
		/// The UDP packets are sent to port 7070.

//        Example
//0	 1	 2	 3	 4	 5	 6	 7	 8	 9	 10	 11	 12	 13	 14	 15	 16	 17	 18	 19	 20	 21
//73	 1c	 2b	 95	 8b	 9e	 d8	 06	 02	 00	 08	 00	 00	 00	 06	 00	 00	 00	 fe	 ff	 ff	 ff
//CRC32	 Session ID	 Command 1	 Array length	 Array
//114859659	 2	 8	
//Commands
//The known commands (i.e. values for "Command 1") are:
//Command 1	 Name	 Parameters
//1	 key input	 1x 4 bytes
//2	 touch move	 2x 4 bytes
//3	 touch click	 1x 4 bytes
//5	 set favorite channel	 2x 4 bytes
//7	 channel change	 2x 4 bytes
//9	 text input	 Command 2 = 1, String

		/// </summary>
		/// <param name="dataEntry"></param>
		/// <returns></returns>
		public byte[] BuildMessage (byte[] d)
		{

			byte[] iMsg = new byte[21];//
			/*{
                0,0,0,0 //crc32

            }; // default 21 length
             */ 
            
			return iMsg;
		}
	}
}
