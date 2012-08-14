namespace LG350_Remote
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cboPorts = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnStop = new System.Windows.Forms.Button();
            this.btnStart = new System.Windows.Forms.Button();
            this.PortLG = new System.IO.Ports.SerialPort(this.components);
            this.fraLGControl = new System.Windows.Forms.GroupBox();
            this.cmdDebug = new System.Windows.Forms.Button();
            this.txtDebug = new System.Windows.Forms.TextBox();
            this.btnSend = new System.Windows.Forms.Button();
            this.txtSend = new System.Windows.Forms.TextBox();
            this.btnOk = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button9 = new System.Windows.Forms.Button();
            this.button10 = new System.Windows.Forms.Button();
            this.button11 = new System.Windows.Forms.Button();
            this.button12 = new System.Windows.Forms.Button();
            this.button13 = new System.Windows.Forms.Button();
            this.button14 = new System.Windows.Forms.Button();
            this.button15 = new System.Windows.Forms.Button();
            this.button16 = new System.Windows.Forms.Button();
            this.button17 = new System.Windows.Forms.Button();
            this.button18 = new System.Windows.Forms.Button();
            this.button19 = new System.Windows.Forms.Button();
            this.button20 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.button21 = new System.Windows.Forms.Button();
            this.button22 = new System.Windows.Forms.Button();
            this.button23 = new System.Windows.Forms.Button();
            this.button24 = new System.Windows.Forms.Button();
            this.button25 = new System.Windows.Forms.Button();
            this.button26 = new System.Windows.Forms.Button();
            this.button27 = new System.Windows.Forms.Button();
            this.button28 = new System.Windows.Forms.Button();
            this.button29 = new System.Windows.Forms.Button();
            this.button30 = new System.Windows.Forms.Button();
            this.button31 = new System.Windows.Forms.Button();
            this.button32 = new System.Windows.Forms.Button();
            this.button33 = new System.Windows.Forms.Button();
            this.button34 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.fraLGControl.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cboPorts);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnStop);
            this.groupBox1.Controls.Add(this.btnStart);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(288, 101);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Communication";
            // 
            // cboPorts
            // 
            this.cboPorts.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPorts.FormattingEnabled = true;
            this.cboPorts.Location = new System.Drawing.Point(152, 29);
            this.cboPorts.Name = "cboPorts";
            this.cboPorts.Size = new System.Drawing.Size(124, 21);
            this.cboPorts.Sorted = true;
            this.cboPorts.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(133, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Serial Port (LG Connected)";
            // 
            // btnStop
            // 
            this.btnStop.Enabled = false;
            this.btnStop.Location = new System.Drawing.Point(222, 68);
            this.btnStop.Name = "btnStop";
            this.btnStop.Size = new System.Drawing.Size(54, 27);
            this.btnStop.TabIndex = 3;
            this.btnStop.Text = "Off";
            this.btnStop.UseVisualStyleBackColor = true;
            this.btnStop.Click += new System.EventHandler(this.btnStop_Click);
            // 
            // btnStart
            // 
            this.btnStart.Location = new System.Drawing.Point(162, 68);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(54, 27);
            this.btnStart.TabIndex = 2;
            this.btnStart.Text = "On";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // fraLGControl
            // 
            this.fraLGControl.Controls.Add(this.button34);
            this.fraLGControl.Controls.Add(this.button33);
            this.fraLGControl.Controls.Add(this.button32);
            this.fraLGControl.Controls.Add(this.button31);
            this.fraLGControl.Controls.Add(this.button30);
            this.fraLGControl.Controls.Add(this.button27);
            this.fraLGControl.Controls.Add(this.button28);
            this.fraLGControl.Controls.Add(this.button29);
            this.fraLGControl.Controls.Add(this.button26);
            this.fraLGControl.Controls.Add(this.button25);
            this.fraLGControl.Controls.Add(this.button24);
            this.fraLGControl.Controls.Add(this.button23);
            this.fraLGControl.Controls.Add(this.button22);
            this.fraLGControl.Controls.Add(this.button21);
            this.fraLGControl.Controls.Add(this.label3);
            this.fraLGControl.Controls.Add(this.label2);
            this.fraLGControl.Controls.Add(this.button20);
            this.fraLGControl.Controls.Add(this.button19);
            this.fraLGControl.Controls.Add(this.button18);
            this.fraLGControl.Controls.Add(this.button17);
            this.fraLGControl.Controls.Add(this.button16);
            this.fraLGControl.Controls.Add(this.button15);
            this.fraLGControl.Controls.Add(this.button14);
            this.fraLGControl.Controls.Add(this.button13);
            this.fraLGControl.Controls.Add(this.button12);
            this.fraLGControl.Controls.Add(this.button11);
            this.fraLGControl.Controls.Add(this.button10);
            this.fraLGControl.Controls.Add(this.button9);
            this.fraLGControl.Controls.Add(this.button8);
            this.fraLGControl.Controls.Add(this.button7);
            this.fraLGControl.Controls.Add(this.button6);
            this.fraLGControl.Controls.Add(this.button5);
            this.fraLGControl.Controls.Add(this.button4);
            this.fraLGControl.Controls.Add(this.button3);
            this.fraLGControl.Controls.Add(this.button2);
            this.fraLGControl.Controls.Add(this.button1);
            this.fraLGControl.Controls.Add(this.btnOk);
            this.fraLGControl.Controls.Add(this.cmdDebug);
            this.fraLGControl.Enabled = false;
            this.fraLGControl.Location = new System.Drawing.Point(3, 117);
            this.fraLGControl.Name = "fraLGControl";
            this.fraLGControl.Size = new System.Drawing.Size(287, 393);
            this.fraLGControl.TabIndex = 3;
            this.fraLGControl.TabStop = false;
            this.fraLGControl.Text = "Control LG";
            // 
            // cmdDebug
            // 
            this.cmdDebug.Location = new System.Drawing.Point(153, 406);
            this.cmdDebug.Name = "cmdDebug";
            this.cmdDebug.Size = new System.Drawing.Size(82, 24);
            this.cmdDebug.TabIndex = 0;
            this.cmdDebug.Text = "debug";
            this.cmdDebug.UseVisualStyleBackColor = true;
            this.cmdDebug.Click += new System.EventHandler(this.cmdDebug_Click);
            // 
            // txtDebug
            // 
            this.txtDebug.Location = new System.Drawing.Point(299, 58);
            this.txtDebug.Multiline = true;
            this.txtDebug.Name = "txtDebug";
            this.txtDebug.Size = new System.Drawing.Size(518, 452);
            this.txtDebug.TabIndex = 4;
            this.txtDebug.WordWrap = false;
            // 
            // btnSend
            // 
            this.btnSend.Location = new System.Drawing.Point(725, 30);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(84, 22);
            this.btnSend.TabIndex = 5;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // txtSend
            // 
            this.txtSend.Location = new System.Drawing.Point(299, 32);
            this.txtSend.Name = "txtSend";
            this.txtSend.Size = new System.Drawing.Size(420, 20);
            this.txtSend.TabIndex = 6;
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(72, 303);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(38, 23);
            this.btnOk.TabIndex = 2;
            this.btnOk.Text = "Ok";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button1.Location = new System.Drawing.Point(74, 274);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(36, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "5";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button2.Location = new System.Drawing.Point(36, 303);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(30, 23);
            this.button2.TabIndex = 4;
            this.button2.Text = "3";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button3.Location = new System.Drawing.Point(116, 303);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(32, 23);
            this.button3.TabIndex = 5;
            this.button3.Text = "4";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button4.Location = new System.Drawing.Point(74, 332);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(36, 23);
            this.button4.TabIndex = 6;
            this.button4.Text = "6";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(40, 21);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(28, 28);
            this.button5.TabIndex = 7;
            this.button5.Text = "1";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(74, 21);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(28, 28);
            this.button6.TabIndex = 8;
            this.button6.Text = "2";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(109, 21);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(28, 28);
            this.button7.TabIndex = 9;
            this.button7.Text = "3";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(40, 55);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(28, 28);
            this.button8.TabIndex = 10;
            this.button8.Text = "4";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(74, 55);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(28, 28);
            this.button9.TabIndex = 11;
            this.button9.Text = "5";
            this.button9.UseVisualStyleBackColor = true;
            this.button9.Click += new System.EventHandler(this.button9_Click);
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(109, 55);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(28, 28);
            this.button10.TabIndex = 12;
            this.button10.Text = "6";
            this.button10.UseVisualStyleBackColor = true;
            this.button10.Click += new System.EventHandler(this.button10_Click);
            // 
            // button11
            // 
            this.button11.Location = new System.Drawing.Point(40, 89);
            this.button11.Name = "button11";
            this.button11.Size = new System.Drawing.Size(28, 28);
            this.button11.TabIndex = 13;
            this.button11.Text = "7";
            this.button11.UseVisualStyleBackColor = true;
            this.button11.Click += new System.EventHandler(this.button11_Click);
            // 
            // button12
            // 
            this.button12.Location = new System.Drawing.Point(74, 89);
            this.button12.Name = "button12";
            this.button12.Size = new System.Drawing.Size(28, 28);
            this.button12.TabIndex = 14;
            this.button12.Text = "8";
            this.button12.UseVisualStyleBackColor = true;
            this.button12.Click += new System.EventHandler(this.button12_Click);
            // 
            // button13
            // 
            this.button13.Location = new System.Drawing.Point(108, 89);
            this.button13.Name = "button13";
            this.button13.Size = new System.Drawing.Size(28, 28);
            this.button13.TabIndex = 15;
            this.button13.Text = "9";
            this.button13.UseVisualStyleBackColor = true;
            this.button13.Click += new System.EventHandler(this.button13_Click);
            // 
            // button14
            // 
            this.button14.Location = new System.Drawing.Point(17, 123);
            this.button14.Name = "button14";
            this.button14.Size = new System.Drawing.Size(51, 28);
            this.button14.TabIndex = 16;
            this.button14.Text = "List";
            this.button14.UseVisualStyleBackColor = true;
            // 
            // button15
            // 
            this.button15.Location = new System.Drawing.Point(74, 123);
            this.button15.Name = "button15";
            this.button15.Size = new System.Drawing.Size(28, 28);
            this.button15.TabIndex = 17;
            this.button15.Text = "0";
            this.button15.UseVisualStyleBackColor = true;
            this.button15.Click += new System.EventHandler(this.button15_Click);
            // 
            // button16
            // 
            this.button16.Location = new System.Drawing.Point(111, 123);
            this.button16.Name = "button16";
            this.button16.Size = new System.Drawing.Size(59, 28);
            this.button16.TabIndex = 18;
            this.button16.Text = "Q.View";
            this.button16.UseVisualStyleBackColor = true;
            // 
            // button17
            // 
            this.button17.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button17.Location = new System.Drawing.Point(17, 157);
            this.button17.Name = "button17";
            this.button17.Size = new System.Drawing.Size(36, 23);
            this.button17.TabIndex = 19;
            this.button17.Text = "5";
            this.button17.UseVisualStyleBackColor = true;
            this.button17.Click += new System.EventHandler(this.button17_Click);
            // 
            // button18
            // 
            this.button18.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button18.Location = new System.Drawing.Point(134, 157);
            this.button18.Name = "button18";
            this.button18.Size = new System.Drawing.Size(36, 23);
            this.button18.TabIndex = 20;
            this.button18.Text = "5";
            this.button18.UseVisualStyleBackColor = true;
            this.button18.Click += new System.EventHandler(this.button18_Click);
            // 
            // button19
            // 
            this.button19.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button19.Location = new System.Drawing.Point(17, 215);
            this.button19.Name = "button19";
            this.button19.Size = new System.Drawing.Size(36, 23);
            this.button19.TabIndex = 21;
            this.button19.Text = "6";
            this.button19.UseVisualStyleBackColor = true;
            this.button19.Click += new System.EventHandler(this.button19_Click);
            // 
            // button20
            // 
            this.button20.Font = new System.Drawing.Font("Marlett", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(2)));
            this.button20.Location = new System.Drawing.Point(134, 215);
            this.button20.Name = "button20";
            this.button20.Size = new System.Drawing.Size(36, 23);
            this.button20.TabIndex = 22;
            this.button20.Text = "6";
            this.button20.UseVisualStyleBackColor = true;
            this.button20.Click += new System.EventHandler(this.button20_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(14, 191);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(42, 13);
            this.label2.TabIndex = 23;
            this.label2.Text = "Volume";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(131, 191);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 24;
            this.label3.Text = "Channel";
            // 
            // button21
            // 
            this.button21.Location = new System.Drawing.Point(64, 157);
            this.button21.Name = "button21";
            this.button21.Size = new System.Drawing.Size(64, 23);
            this.button21.TabIndex = 25;
            this.button21.Text = "Fav";
            this.button21.UseVisualStyleBackColor = true;
            this.button21.Click += new System.EventHandler(this.button21_Click);
            // 
            // button22
            // 
            this.button22.Location = new System.Drawing.Point(64, 186);
            this.button22.Name = "button22";
            this.button22.Size = new System.Drawing.Size(64, 23);
            this.button22.TabIndex = 26;
            this.button22.Text = "Ratio";
            this.button22.UseVisualStyleBackColor = true;
            this.button22.Click += new System.EventHandler(this.button22_Click);
            // 
            // button23
            // 
            this.button23.Location = new System.Drawing.Point(64, 215);
            this.button23.Name = "button23";
            this.button23.Size = new System.Drawing.Size(64, 23);
            this.button23.TabIndex = 27;
            this.button23.Text = "Mute";
            this.button23.UseVisualStyleBackColor = true;
            this.button23.Click += new System.EventHandler(this.button23_Click);
            // 
            // button24
            // 
            this.button24.Location = new System.Drawing.Point(17, 244);
            this.button24.Name = "button24";
            this.button24.Size = new System.Drawing.Size(51, 23);
            this.button24.TabIndex = 28;
            this.button24.Text = "Menu";
            this.button24.UseVisualStyleBackColor = true;
            this.button24.Click += new System.EventHandler(this.button24_Click);
            // 
            // button25
            // 
            this.button25.Location = new System.Drawing.Point(69, 244);
            this.button25.Name = "button25";
            this.button25.Size = new System.Drawing.Size(51, 23);
            this.button25.TabIndex = 29;
            this.button25.Text = "Guide";
            this.button25.UseVisualStyleBackColor = true;
            this.button25.Click += new System.EventHandler(this.button25_Click);
            // 
            // button26
            // 
            this.button26.Location = new System.Drawing.Point(119, 244);
            this.button26.Name = "button26";
            this.button26.Size = new System.Drawing.Size(51, 23);
            this.button26.TabIndex = 30;
            this.button26.Text = "Q.Menu";
            this.button26.UseVisualStyleBackColor = true;
            this.button26.Click += new System.EventHandler(this.button26_Click);
            // 
            // button27
            // 
            this.button27.Location = new System.Drawing.Point(134, 361);
            this.button27.Name = "button27";
            this.button27.Size = new System.Drawing.Size(51, 23);
            this.button27.TabIndex = 33;
            this.button27.Text = "Exit";
            this.button27.UseVisualStyleBackColor = true;
            this.button27.Click += new System.EventHandler(this.button27_Click);
            // 
            // button28
            // 
            this.button28.Location = new System.Drawing.Point(69, 361);
            this.button28.Name = "button28";
            this.button28.Size = new System.Drawing.Size(51, 23);
            this.button28.TabIndex = 32;
            this.button28.Text = "Info";
            this.button28.UseVisualStyleBackColor = true;
            this.button28.Click += new System.EventHandler(this.button28_Click);
            // 
            // button29
            // 
            this.button29.Location = new System.Drawing.Point(5, 361);
            this.button29.Name = "button29";
            this.button29.Size = new System.Drawing.Size(51, 23);
            this.button29.TabIndex = 31;
            this.button29.Text = "Back";
            this.button29.UseVisualStyleBackColor = true;
            this.button29.Click += new System.EventHandler(this.button29_Click);
            // 
            // button30
            // 
            this.button30.Location = new System.Drawing.Point(5, 21);
            this.button30.Name = "button30";
            this.button30.Size = new System.Drawing.Size(29, 28);
            this.button30.TabIndex = 34;
            this.button30.Text = "On";
            this.button30.UseVisualStyleBackColor = true;
            // 
            // button31
            // 
            this.button31.Location = new System.Drawing.Point(143, 21);
            this.button31.Name = "button31";
            this.button31.Size = new System.Drawing.Size(29, 28);
            this.button31.TabIndex = 35;
            this.button31.Text = "IN";
            this.button31.UseVisualStyleBackColor = true;
            this.button31.Click += new System.EventHandler(this.button31_Click);
            // 
            // button32
            // 
            this.button32.Location = new System.Drawing.Point(143, 55);
            this.button32.Name = "button32";
            this.button32.Size = new System.Drawing.Size(42, 28);
            this.button32.TabIndex = 36;
            this.button32.Text = "T/R";
            this.button32.UseVisualStyleBackColor = true;
            // 
            // button33
            // 
            this.button33.Location = new System.Drawing.Point(211, 21);
            this.button33.Name = "button33";
            this.button33.Size = new System.Drawing.Size(70, 28);
            this.button33.TabIndex = 37;
            this.button33.Text = "EZ-Adjust";
            this.button33.UseVisualStyleBackColor = true;
            this.button33.Click += new System.EventHandler(this.button33_Click);
            // 
            // button34
            // 
            this.button34.Location = new System.Drawing.Point(211, 55);
            this.button34.Name = "button34";
            this.button34.Size = new System.Drawing.Size(70, 28);
            this.button34.TabIndex = 38;
            this.button34.Text = "In Start";
            this.button34.UseVisualStyleBackColor = true;
            this.button34.Click += new System.EventHandler(this.button34_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(295, 512);
            this.Controls.Add(this.txtSend);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(this.txtDebug);
            this.Controls.Add(this.fraLGControl);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmMain";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "22LG350 - Remote";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.fraLGControl.ResumeLayout(false);
            this.fraLGControl.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cboPorts;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnStop;
        private System.Windows.Forms.Button btnStart;
        private System.IO.Ports.SerialPort PortLG;
        private System.Windows.Forms.GroupBox fraLGControl;
        private System.Windows.Forms.Button cmdDebug;
        private System.Windows.Forms.TextBox txtDebug;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.TextBox txtSend;
        private System.Windows.Forms.Button button33;
        private System.Windows.Forms.Button button32;
        private System.Windows.Forms.Button button31;
        private System.Windows.Forms.Button button30;
        private System.Windows.Forms.Button button27;
        private System.Windows.Forms.Button button28;
        private System.Windows.Forms.Button button29;
        private System.Windows.Forms.Button button26;
        private System.Windows.Forms.Button button25;
        private System.Windows.Forms.Button button24;
        private System.Windows.Forms.Button button23;
        private System.Windows.Forms.Button button22;
        private System.Windows.Forms.Button button21;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button20;
        private System.Windows.Forms.Button button19;
        private System.Windows.Forms.Button button18;
        private System.Windows.Forms.Button button17;
        private System.Windows.Forms.Button button16;
        private System.Windows.Forms.Button button15;
        private System.Windows.Forms.Button button14;
        private System.Windows.Forms.Button button13;
        private System.Windows.Forms.Button button12;
        private System.Windows.Forms.Button button11;
        private System.Windows.Forms.Button button10;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button button34;
    }
}

