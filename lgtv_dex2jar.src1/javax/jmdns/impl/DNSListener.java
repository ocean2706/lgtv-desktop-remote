package javax.jmdns.impl;

abstract interface DNSListener
{
  public abstract void updateRecord(DNSCache paramDNSCache, long paramLong, DNSEntry paramDNSEntry);
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSListener
 * JD-Core Version:    0.6.0
 */