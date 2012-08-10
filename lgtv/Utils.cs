using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
    public class Utils
    {
        internal static TVInfo ConvertObject2TVInfo(object destInfo)
        {
            if (destInfo is TVInfo)
            {
                return destInfo as TVInfo;
            }
            return null;
        }
    }
}
