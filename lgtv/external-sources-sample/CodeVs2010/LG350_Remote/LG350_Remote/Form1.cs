using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;

namespace LG350_Remote
{
    public partial class frmMain : Form
    {
        private string strBuffer=string.Empty;
        public delegate void AddnewTextDelegate(string str);
        public frmMain()
        {
            InitializeComponent();
            this.Load += new EventHandler(frmMain_Load);
            PortLG.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(PortLG_DataReceived);
            
        }

        void PortLG_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {

            SerialPort sp = sender as SerialPort;
            string data = sp.ReadExisting();
            AddTextToTextBox(data);
            
        }

        
        public void AddTextToTextBox(string str)
        {
            if (this.txtDebug.InvokeRequired)
            {
                this.Invoke(new AddnewTextDelegate(AddTextToTextBox), str);
            }
            else
            {
                this.txtDebug.Text += str;
            }

        }


        void frmMain_Load(object sender, EventArgs e)
        {
            string[] theSerialPortNames = System.IO.Ports.SerialPort.GetPortNames();
            foreach (string port in theSerialPortNames)
            {
                cboPorts.Items.Add(port);
            }
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            PortLG.PortName = cboPorts.Text;
            PortLG.Open();
            btnStart.Enabled = false;
            btnStop.Enabled = true;
            fraLGControl.Enabled = true;
            SendCommand("");
        }

        private void btnStop_Click(object sender, EventArgs e)
        {
            PortLG.Close();
            btnStart.Enabled = true;
            btnStop.Enabled = false;
            fraLGControl.Enabled = false;
        }

        private void cmdDebug_Click(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SendCommand("u");
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            SendCommand(txtSend.Text);
        }



        public void Mute()
        {
            SendCommand("u");
        }

        public void SendCommand(string Command)
        {
            PortLG.WriteLine(Command);
        }

        private void btnMute_Click(object sender, EventArgs e)
        {
            Mute();
        }

        private void button33_Click(object sender, EventArgs e)
        {
            SendCommand("l");
        }

        private void button23_Click(object sender, EventArgs e)
        {
            SendCommand("u");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            SendCommand("1");
        }

        private void button6_Click(object sender, EventArgs e)
        {
            SendCommand("2");
        }

        private void button7_Click(object sender, EventArgs e)
        {
            SendCommand("3");
        }

        private void button8_Click(object sender, EventArgs e)
        {
            SendCommand("4");
        }

        private void button9_Click(object sender, EventArgs e)
        {
            SendCommand("5");
        }

        private void button10_Click(object sender, EventArgs e)
        {
            SendCommand("6");
        }

        private void button11_Click(object sender, EventArgs e)
        {
            SendCommand("7");
        }

        private void button12_Click(object sender, EventArgs e)
        {
            SendCommand("8");
        }

        private void button13_Click(object sender, EventArgs e)
        {
            SendCommand("9");
        }

        private void button15_Click(object sender, EventArgs e)
        {
            SendCommand("0");
        }

        private void button17_Click(object sender, EventArgs e)
        {
            SendCommand(".");
        }

        private void button19_Click(object sender, EventArgs e)
        {
            SendCommand(",");
        }

        private void button18_Click(object sender, EventArgs e)
        {
            SendCommand(">");
        }

        private void button20_Click(object sender, EventArgs e)
        {
            SendCommand("<");
        }

        private void button24_Click(object sender, EventArgs e)
        {
            SendCommand("m");
        }

        private void button27_Click(object sender, EventArgs e)
        {
            SendCommand("x");
        }

        private void button22_Click(object sender, EventArgs e)
        {
            SendCommand("r");
        }

        private void button25_Click(object sender, EventArgs e)
        {
            SendCommand("g");
        }

        private void button21_Click(object sender, EventArgs e)
        {
            SendCommand("f");
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            SendCommand("[");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SendCommand("/");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SendCommand(";");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SendCommand("'");
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            SendCommand("");
        }

        private void button31_Click(object sender, EventArgs e)
        {
            SendCommand("v");
        }

        private void button26_Click(object sender, EventArgs e)
        {
            SendCommand("q");
        }

        private void button28_Click(object sender, EventArgs e)
        {
            SendCommand("i");
        }

        private void button29_Click(object sender, EventArgs e)
        {
            SendCommand("b");
        }

        private void button34_Click(object sender, EventArgs e)
        {
            SendCommand("k");
        }
    }
}
