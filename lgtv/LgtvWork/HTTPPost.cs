using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.IO;

namespace com.lg.tv
{
	public partial class LWebRequest
	{
		public void SetMethodPOST ()
		{
			request.Method = "POST";
		}
		public void SetMethodGET ()
		{
			request.Method = "GET";
		}
		public void setHeader (HttpRequestHeader key, string val)
		{
			if (key == HttpRequestHeader.ContentType) {
				request.ContentType = val;
			}

		}
		public void setUnrestrictedHeader (String key, string val)
		{
			request.Headers [key] = val;
		}
		
		public void setURI (Uri uri)
		{
			request = (HttpWebRequest)System.Net.WebRequest.Create (uri);
		}

		public void SetRequest (HttpWebRequest request)
		{
			this.request = request;
		}

		public String PostData { get; set; }
		public HttpWebRequest request = null;
		public String ContentType { get; set; }
		public String RawResponse { get; set; }
		public String DoPostData ()
		{
			SetMethodPOST ();
			byte[] byteArray = Encoding.UTF8.GetBytes (PostData);
			// Set the ContentType property of the WebRequest.
			//	request.ContentType = (String.IsNullOrEmpty (ContentType) ? ContentType : "application/x-www-form-urlencoded");
			// Set the ContentLength property of the WebRequest.
			request.ContentLength = byteArray.Length;
			// Get the request stream.
			Stream dataStream = request.GetRequestStream ();
			// Write the data to the request stream.
			dataStream.Write (byteArray, 0, byteArray.Length);
			// Close the Stream object.
			dataStream.Close ();
			// Get the response.
			WebResponse response = request.GetResponse ();
			// Display the status.
			Console.WriteLine (((HttpWebResponse)response).StatusDescription);
			// Get the stream containing content returned by the server.
			dataStream = response.GetResponseStream ();
			// Open the stream using a StreamReader for easy access.
			StreamReader reader = new StreamReader (dataStream);
			// Read the content.
			RawResponse = reader.ReadToEnd ();
			// Display the content.
			//Console.WriteLine (responseFromServer);
			// Clean up the streams.
			reader.Close ();
			dataStream.Close ();
			response.Close ();
			return RawResponse;
		}
	}


	public class HTTPPost
	{
		private LWebRequest m_httpMethod = new LWebRequest ();
		public string execute ()
		{

			m_httpMethod.DoPostData ();
			return m_httpMethod.RawResponse;
		}

		string m_strEntity {
			get;
			set;
		}
		public void setEntity (string m_strEntity)
		{
			m_httpMethod.PostData = m_strEntity;
		}

		String m_strHost {
			get;
			set;
		}
		public void setHost (string str)
		{
			this.m_strHost = str;
			this.m_httpMethod.setURI (new Uri (this.m_strHost));
			this.m_httpMethod.setHeader (HttpRequestHeader.ContentType, "application/atom+xml");

		}

		public HTTPPost ()
		{
			//throw new NotImplementedException ();
		}
		internal HttpWebRequest request;
		internal HttpWebResponse response;

	}
	public class HTTPGet
	{
        HttpWebRequest m_httpMethod;
        public void setURL(string ip, string path)
        {
            
            
            String str = "http://" + ip + ":8080" + path;
            
           
            try
            {
                m_httpMethod = (HttpWebRequest)System.Net.WebRequest.Create(str);
            }
            catch (URISyntaxException localURISyntaxException)
            {
                
                    localURISyntaxException.printStackTrace();
            }
        }

        public string execute()
        {
            WebResponse h=m_httpMethod.GetResponse();
            Stream receiveStream = h.GetResponseStream();
            StreamReader readStream = new StreamReader(receiveStream, Encoding.UTF8);

            String s= readStream.ReadToEnd();
            h.Close();
            readStream.Close();
            return s;
        }
    }

}
