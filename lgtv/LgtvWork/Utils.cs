using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class Utils
	{
		internal static TVInfo ConvertObject2TVInfo (object destInfo)
		{
			if (destInfo is TVInfo) {
				return destInfo as TVInfo;
			}
			return null;
		}

		public static byte[] prepare_2bytes (int data)
		{
			byte[] ret = new byte[2];
			UInt16 sb = UInt16.Parse (data.ToString ());
			for (int i = 0; i < 2; i++) {
				ret [i] = (byte)(UInt16)(sb >> i * 8);
			}
			return ret;
		}
		public static byte[] prepare_4bytes (int data)
		{
			byte[] ret = new byte[4];
            
			for (int i = 0; i < 4; i++) {
				ret [i] = (byte)(uint)(data >> i * 8);
			}
			return ret;
		}

		internal static byte[] prepare_4bytes (long data)
		{
			byte[] ret = new byte[4];

			for (int i = 0; i < 4; i++) {
				ret [i] = (byte)(uint)(data >> i * 8);
			}
			return ret;
		}
		public String Byte2Hex (byte[] b)
		{
			return BitConverter.ToString (b);
		}

	}
}
