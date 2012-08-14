using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
   
	public partial class LGTVUdpSocket
	{
		private byte[] m_buf;
		private InetAddress m_inetIP;
		private int m_nPort;
		private DatagramSocket m_socket;
		private String m_strIP;

		private bool  loadCRC32 ()
		{
			CRC32 localCRC32 = new CRC32 ();
			localCRC32.update (this.m_buf, 0, this.m_buf.Length);
			long l = localCRC32.getValue ();
			for (int i = 0; i <= 4; i++) {
				// primii patru biti only !!!
				//this.m_buf[i] = (byte)(int)(l >>> i * 8); // rearange bites in reverse order !!! 76985d0f trebuie scris 0f,

			}
			return true;
		}

		public void close ()
		{
			this.m_inetIP = null;
			this.m_socket = null;
		}

		public bool  create (String paramString, int paramInt)
		{
//			close ();
//			this.m_strIP = paramString;
//			this.m_nPort = paramInt;
//			try {
//				this.m_inetIP = InetAddress.getByName (this.m_strIP);
//				this.m_socket = new DatagramSocket ();
//				i = 1;
//				return i;
//			} catch (UnknownHostException localUnknownHostException) {
//				while (true) {
//					localUnknownHostException.printStackTrace ();
//					i = 0;
//				}
//			} catch (SocketException localSocketException) {
//				while (true) {
//					localSocketException.printStackTrace ();
//					int i = 0;
//				}
//			}
			return true;
		}

		public bool  makePacket (String paramString, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
		{
//    this.m_buf = new byte[paramInt3 + 18];
//    long l1 = Long.parseLong(paramString);
//    int i = 0;
//    int j;
//    label29: long l2;
//    int k;
//    label45: int m;
//    if (i >= 4)
//    {
//      j = 0;
//      if (j < 2)
//        break label103;
//      l2 = paramInt3 + 4;
//      k = 0;
//      if (k < 4)
//        break label127;
//      m = 0;
//      label54: if (m < 4)
//        break label153;
//    }
//    for (int n = 0; ; n++)
//    {
//      if (n >= paramArrayOfByte.length)
//      {
//        loadCRC32();
//        return true;
//        this.m_buf[(i + 4)] = (byte)(int)(l1 >>> i * 8);
//        i++;
//        break;
//        label103: this.m_buf[(j + 8)] = (byte)(paramInt1 >>> j * 8);
//        j++;
//        break label29;
//        label127: this.m_buf[(k + 10)] = (byte)(int)(l2 >>> k * 8);
//        k++;
//        break label45;
//        label153: this.m_buf[(m + 14)] = (byte)(paramInt2 >>> m * 8);
//        m++;
//        break label54;
//      }
//      this.m_buf[(n + 18)] = paramArrayOfByte[n];
//    }
			return true;
		}

		public bool  makePacket (String paramString, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
		{
//    this.m_buf = new byte[paramInt2 + 14];
//    long l1 = Long.parseLong(paramString);
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
//      this.m_buf[(m + 14)] = paramArrayOfByte[m];
//    }
			return true;
		}

		public bool  sendData ()
		{
//			try {
//				DatagramPacket localDatagramPacket = new DatagramPacket (this.m_buf, this.m_buf.Length, this.m_inetIP, this.m_nPort);
//				this.m_socket.send (localDatagramPacket);
//				i = 1;
//				return i;
//			} catch (IOException localIOException) {
//				while (true) {
//					localIOException.printStackTrace ();
//					int i = 0;
//				}
//			}
			return true;
		}
	}
}
