using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
    public class LgTvMouseMoveController
    {

        LgTVRemoteUDPRequest udp=new LgTVRemoteUDPRequest(); 
        public void init(TVInfo t)
        {
            this.tv = t;
            udp.SetTvInfo(tv);
        }
        public TVInfo tv {get;set;}
        public void MouseMove(int x, int y)
        {
//            def move_mouse px, py
//  cursor_show
//  cmd = [2,8] # move mouse
//  bytes = craft_packet( cmd[0], cmd[1], px, py) 
//  i = 0
//  n = 4
//  while i < n
//    send_packet bytes
//    i += 1
//    sleep 0.1
//  end
//end
            

        }
        public void CursorShow()
        {
            // show cursor;
        }

        public byte[] CraftPacket(int cmd, int attrByteLen, int a, int? b)
        {
            long sessionid = long.Parse(tv.SESSIONID);
            List<byte> lst = new List<byte>();
            lst.AddRange(new byte[] { 0, 0, 0, 0 }); // first empty crc32 sum

            lst.AddRange(Utils.prepare_4bytes(sessionid));
            lst.AddRange(Utils.prepare_2bytes(cmd));
            lst.AddRange(Utils.prepare_4bytes(attrByteLen));
            lst.AddRange(Utils.prepare_4bytes(a));
            if(b!=null){
            }
            lst.AddRange(Utils.prepare_4bytes(b));



            return new byte[] { };
        }
        public byte[] CraftPacket(int cmd, int attrbyteLen, int a)
        {
        }
        public byte[] CraftPacket(int cmd, int attrbyteLen, int a, int ? b,)
        {
        }
        public void SendPacket(byte[] data)
        {

        }
        public void ClickMouse()
        {
  //          cursor_show
  //cmd = [3,4]
  //bytes = craft_packet(cmd[0],cmd[1], 0x02);
  //      send_packet bytes
        }
    }
}
