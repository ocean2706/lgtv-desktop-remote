using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
   public  class CMainMenu
    {
       public void PowerOffTV()
       {
          LifeTime.getInstance().getUDPRequest().HandlekeyInput(80);//Integer.parseInt(this.val$cxtFrom.getResources().getString(2131099761)));
            ByeByeReceiver.sendBroadcastByeBye(false);
       }
    }
}
