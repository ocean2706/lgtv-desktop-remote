/*
 * Created by SharpDevelop.
 * User: george
 * Date: 6/15/2012
 * Time: 1:40 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using com.lg.clientlib.remote;

namespace LgtvRemote
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{

        public RemoteControl RemoteControlDef
        {
            get;
            set;
        }
        TouchPad tp = new TouchPad();
		public MainForm()
		{
			//
			// The InitializeComponent() call is required for Windows Forms designer support.
			//
			InitializeComponent();
            RemoteControlDef = new RemoteControl();
			//
			// TODO: Add constructor code after the InitializeComponent() call.
			//
            CreateControlsFromRemote(RemoteControlDef);
         
            //tp.StartPosition = FormStartPosition.Manual;
            this.Move += new EventHandler(MainForm_Move);
            tp.Show();
		}

        void MainForm_Move(object sender, EventArgs e)
        {
            LinkTouchPad();
        }
        protected void LinkTouchPad()
        {
            //SystemInformation.WorkingArea;
            Point p = this.DesktopLocation;
            p.X+=this.Width+10;
            tp.DesktopLocation=p;
            
        }


        private void CreateControlsFromRemote(RemoteControl RemoteControlDef)
        {
            //throw new NotImplementedException();
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }
	}
}
