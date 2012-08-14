using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace LgtvRemote
{
    public partial class TouchPad : Form
    {
        public TouchPad()
        {
            InitializeComponent();
            this.MouseWheel += new MouseEventHandler(TouchPad_MouseWheel);
            this.MouseMove += new MouseEventHandler(TouchPad_MouseMove);
        }

        void TouchPad_MouseMove(object sender, MouseEventArgs e)
        {
            textBox1.Text = e.X.ToString()+" "+ e.Y.ToString();
            textBox1.Invalidate();
        }

       

        void TouchPad_MouseWheel(object sender, MouseEventArgs e)
        {
            textBox1.Text += e.Delta.ToString()+"\r\n";
                
        }

        private void TouchPad_MouseClick(object sender, MouseEventArgs e)
        {

        }

        private void TouchPad_Scroll(object sender, ScrollEventArgs e)
        {
            
        }
    }
}
