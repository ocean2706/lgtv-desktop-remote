using System;
using System.Collections.Generic;

namespace TestLg
{



	class MainClass
	{

		public static byte[] rubyWayOfPack (int session, int cmd1, int nextsetLength, byte[] b1, byte[] b2)
		{
			List<byte> b = new List<byte> ();
			b.AddRange (new byte[]{0,0,0,0}); // set crc bytes to 0 for crc calc
			b.AddRange (long2Byte (session));
			b.AddRange(int2Byte(cmd));
			b.AddRange()
			int crc = 0; // crc need to be calculated here
			byte[] crc32bytes = long2Byte (crc);
			// put crc real data after crc calculation
			for (int i=0; i <4; i++) {
				b [i] = crc32bytes [i];
			}
			return b.ToArray ();
		}
		public bool makePacket (String sessionId, int opCode, int nextLength, byte[] paramArrayOfByte)
		{
//    byte[] m_buf = new byte[paramInt2 + 14];
//    long l1 = long.Parse(paramString); // session ?
//    int i = 0;
//    int j;
//    label28: long l2;
//    int k;
//    if (i >= 4)
//    {
//      j = 0;
//      if (j < 2)
//        break label90;
//      l2 = paramInt2;
//      k = 0;
//      label41: if (k < 4)
//        break label114;
//    }
//    for (int m = 0; ; m++)
//    {
//      if (m >= paramArrayOfByte.length)
//      {
//        loadCRC32();
//        return true;
//        this.m_buf[(i + 4)] = (byte)(int)(l1 >>> i * 8);
//        i++;
//        break;
//        label90: this.m_buf[(j + 8)] = (byte)(paramInt1 >>> j * 8);
//        j++;
//        break label28;
//        label114: this.m_buf[(k + 10)] = (byte)(int)(l2 >>> k * 8);
//        k++;
//        break label41;
//      }
			this.m_buf [(m + 14)] = paramArrayOfByte [m];
		}
		// convert a long  value to coresponding bytes
		public static byte[] long2Byte (long val)
		{
			byte[] ret = new Byte[4];
			for (int i=0; i<4; i++) {
				ret [i] = (byte)(uint)(val >> i * 8);
			}
			return ret;
		}
		public static String crc32Hex = "952b1c73";
		public static String ReversedHes = "731c2b95";
		public static String crc32Decimal = "2502630515";
		public static String HexTestPAckage = "73 1c 2b 95 8b 9e d8 06 02 00 08 00 00 00 06 00 00 00 fe ff ff ff";
		public static String RefHexTestPAckage = "00 00 00 00 8b 9e d8 06 02 00 08 00 00 00 06 00 00 00 fe ff ff ff";
		public static String parts1 = "115 28 43 -107";
		public static String parts2 = "-117 -98 -40 6";

		public static void Main (string[] args)
		{
//			uint d1 = 115;
//			uint d2 = 28;
//			uint d3 = 43;
//			uint d4 = (256 - 107);
//			String s = d1.ToString ("X");
//			s += d2.ToString ("X");
//			s += d3.ToString ("X");
//			s += d4.ToString ("X");
//			Console.WriteLine (s);
//			Console.ReadLine ();

			byte[] p = long2Byte (2502630515);

		}
	}
}
