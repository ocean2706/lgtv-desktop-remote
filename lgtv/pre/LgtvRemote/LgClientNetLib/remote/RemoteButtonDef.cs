using System;
using System.Collections.Generic;
using System.Text;

namespace com.lg.clientlib.remote
{
    public class RemoteControlButton{
        public bool IsSystem { get; set; }
        public String Label { get; set; }
        public String KeyCode { get; set; }
    }
    public class RemoteControl
    {
        public List<RemoteControl> ButtonList
        {
            get;
            set;
        }
    }
}
