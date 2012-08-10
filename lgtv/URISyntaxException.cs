using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public  class URISyntaxException : Exception
	{
		internal void printStackTrace ()
		{
			System.Console.WriteLine (this.Message);
		}
	}
}
