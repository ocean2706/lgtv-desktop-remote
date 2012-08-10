using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;
using System.Security.Cryptography;
namespace com.lg.tv
{
    
	public class Crc32 : HashAlgorithm
	{
		public const UInt32 DefaultPolynomial = 0xedb88320;
		public const UInt32 DefaultSeed = 0xffffffff;

		private UInt32 hash;
		private UInt32 seed;
		private UInt32[] table;
		private static UInt32[] defaultTable;

		public Crc32 ()
		{
			table = InitializeTable (DefaultPolynomial);
			seed = DefaultSeed;
			Initialize ();
		}

		public Crc32 (UInt32 polynomial, UInt32 seed)
		{
			table = InitializeTable (polynomial);
			this.seed = seed;
			Initialize ();
		}

		public override void Initialize ()
		{
			hash = seed;
		}

		protected override void HashCore (byte[] buffer, int start, int length)
		{
			hash = CalculateHash (table, hash, buffer, start, length);
		}

		protected override byte[] HashFinal ()
		{
			byte[] hashBuffer = UInt32ToBigEndianBytes (~hash);
			this.HashValue = hashBuffer;
			return hashBuffer;
		}

		public override int HashSize {
			get { return 32; }
		}

		public static UInt32 Compute (byte[] buffer)
		{
			return ~CalculateHash (InitializeTable (DefaultPolynomial), DefaultSeed, buffer, 0, buffer.Length);
		}

		public static UInt32 Compute (UInt32 seed, byte[] buffer)
		{
			return ~CalculateHash (InitializeTable (DefaultPolynomial), seed, buffer, 0, buffer.Length);
		}

		public static UInt32 Compute (UInt32 polynomial, UInt32 seed, byte[] buffer)
		{
			return ~CalculateHash (InitializeTable (polynomial), seed, buffer, 0, buffer.Length);
		}

		private static UInt32[] InitializeTable (UInt32 polynomial)
		{
			if (polynomial == DefaultPolynomial && defaultTable != null)
				return defaultTable;

			UInt32[] createTable = new UInt32[256];
			for (int i = 0; i < 256; i++) {
				UInt32 entry = (UInt32)i;
				for (int j = 0; j < 8; j++)
					if ((entry & 1) == 1)
						entry = (entry >> 1) ^ polynomial;
					else
						entry = entry >> 1;
				createTable [i] = entry;
			}

			if (polynomial == DefaultPolynomial)
				defaultTable = createTable;

			return createTable;
		}

		private static UInt32 CalculateHash (UInt32[] table, UInt32 seed, byte[] buffer, int start, int size)
		{
			UInt32 crc = seed;
			for (int i = start; i < size; i++)
				unchecked {
					crc = (crc >> 8) ^ table [buffer [i] ^ crc & 0xff];
				}
			return crc;
		}

		private byte[] UInt32ToBigEndianBytes (UInt32 x)
		{
			return new byte[] {
			(byte)((x >> 24) & 0xff),
			(byte)((x >> 16) & 0xff),
			(byte)((x >> 8) & 0xff),
			(byte)(x & 0xff)
		};
		}
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
}