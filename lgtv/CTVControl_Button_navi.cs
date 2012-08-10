using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	/// <summary>
	/// butoane navigare shutdown/mute/home_menu/0-9, QMenu/left,right,up,down,ok, red green blue yellow
	/// OnHomeMenu -> se trece pe tab-ul de touchpad
	/// </summary>
	public partial class CTVControl
	{

		/* navi btns
         * ButtonInfo[] arrayOfButtonInfo = new ButtonInfo[9];
     arrayOfButtonInfo[0] = new ButtonInfo(2131230761, 2131099773);
     arrayOfButtonInfo[1] = new ButtonInfo(2131230762, 2131099790);
     arrayOfButtonInfo[2] = new ButtonInfo(2131230764, 2131099787);
     arrayOfButtonInfo[3] = new ButtonInfo(2131230763, 2131099786);
     arrayOfButtonInfo[4] = new ButtonInfo(2131230766, 2131099788);
     arrayOfButtonInfo[5] = new ButtonInfo(2131230756, 2131099791);
     arrayOfButtonInfo[6] = new ButtonInfo(2131230757, 2131099792);
     arrayOfButtonInfo[7] = new ButtonInfo(2131230758, 2131099793);
     arrayOfButtonInfo[8] = new ButtonInfo(2131230759, 2131099794);
         *
 1099773 7f06007d
 1099790 7f06008e
 1099787 7f06008b
 1099786 7f06008a
 1099788 7f06008c
 1099791 7f06008f
 1099792 7f060090
 1099793 7f060091
 1099794 7f060092
         */
		/*MM_buttons */
		/*
        arrayOfButtonInfo[0] = new ButtonInfo(2131230749, 2131099795);
    arrayOfButtonInfo[1] = new ButtonInfo(2131230750, 2131099796);
    arrayOfButtonInfo[2] = new ButtonInfo(2131230751, 2131099797);
    arrayOfButtonInfo[3] = new ButtonInfo(2131230752, 2131099798);
    arrayOfButtonInfo[4] = new ButtonInfo(2131230753, 2131099799);
    arrayOfButtonInfo[5] = new ButtonInfo(2131230754, 2131099800);
    arrayOfButtonInfo[6] = new ButtonInfo(2131230755, 2131099801);
    arrayOfButtonInfo[7] = new ButtonInfo(2131230756, 2131099791);
    arrayOfButtonInfo[8] = new ButtonInfo(2131230757, 2131099792);
    arrayOfButtonInfo[9] = new ButtonInfo(2131230758, 2131099793);
    arrayOfButtonInfo[10] = new ButtonInfo(2131230759, 2131099794);
        */ 

		/// <summary>
		/// Raises the button press event.
		/// </summary>
		/// <param name='keyCode'>
		/// Key code.
		/// </param>
		public void OnBtnPress(int keyCode)
		{
			commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), ResMap.sv(keyCode));
		}
		/// <summary>
		/// Raises the mute sound event.
		/// </summary>
		public void OnMuteSound()
		{
            commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), ResMap.sv(2131099772));// CTVControl_ChVol_Piker.this.getResources().getString(2131099772));
		}
		/// <summary>
		/// Raises the show menu event.
		/// </summary>
		public void OnShowMenu()
		{
			//@todo switch to touchpad menu and activate the touchpad
			commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), ResMap.sv(2131099773));// CTVControl_ChVol_Piker.this.getResources().getString(2131099773));
		}
		/// <summary>
		/// change channel using updown
		/// </summary>
		/// <param name="updown"></param>
		public void OnChanChange(int updown)
		{
			switch (updown) {
				case 1:
					LifeTime.getInstance().getUDPRequest().HandlekeyInput(ResMap.sv(2131099778));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099778)));
					break;
				case 2:
					LifeTime.getInstance().getUDPRequest().HandlekeyInput(ResMap.sv(2131099779));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099779)));
					break;
			}
		}
		/// <summary>
		/// Raises the vol change event.
		/// </summary>
		/// <param name='updown'>
		/// Updown.
		/// </param>
		public void OnVolChange(int updown)
		{
			switch (updown) {
				case 1:
					LifeTime.getInstance().getUDPRequest().HandlekeyInput(ResMap.sv(2131099779));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099779)));
					break;
				case 2:
					LifeTime.getInstance().getUDPRequest().HandlekeyInput(ResMap.sv(2131099778));//Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099778)));
					break;
			}
		}
        public void PowerOffTV()
        {
            LifeTime.getInstance().getUDPRequest().HandlekeyInput(ResMap.sv(2131099761));//Integer.parseInt(this.val$cxtFrom.getResources().getString(2131099761)));
            ByeByeReceiver.sendBroadcastByeBye(false);
        }




	}
  
}
