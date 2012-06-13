package javax.jmdns.impl;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public class DNSCache extends AbstractMap<String, List<? extends DNSEntry>>
{
  public static final DNSCache EmptyCache = new _EmptyCache();
  private transient Set<Map.Entry<String, List<? extends DNSEntry>>> _entrySet = null;

  public DNSCache()
  {
    this(1024);
  }

  public DNSCache(int paramInt)
  {
    this._entrySet = new HashSet(paramInt);
  }

  public DNSCache(DNSCache paramDNSCache)
  {
  }

  /** @deprecated */
  public boolean addDNSEntry(DNSEntry paramDNSEntry)
  {
    monitorenter;
    int i = 0;
    if (paramDNSEntry != null);
    try
    {
      Map.Entry localEntry = getEntry(paramDNSEntry.getKey());
      ArrayList localArrayList;
      if (localEntry != null)
      {
        localArrayList = new ArrayList((Collection)localEntry.getValue());
        localArrayList.add(paramDNSEntry);
        if (localEntry == null)
          break label84;
        localEntry.setValue(localArrayList);
      }
      while (true)
      {
        i = 1;
        return i;
        localArrayList = new ArrayList();
        break;
        label84: entrySet().add(new _CacheEntry(paramDNSEntry.getKey(), localArrayList));
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  /** @deprecated */
  public Collection<DNSEntry> allValues()
  {
    monitorenter;
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = values().iterator();
      while (true)
      {
        boolean bool = localIterator.hasNext();
        if (!bool)
          return localArrayList;
        List localList = (List)localIterator.next();
        if (localList == null)
          continue;
        localArrayList.addAll(localList);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  protected Object clone()
    throws CloneNotSupportedException
  {
    return new DNSCache(this);
  }

  public Set<Map.Entry<String, List<? extends DNSEntry>>> entrySet()
  {
    if (this._entrySet == null)
      this._entrySet = new HashSet();
    return this._entrySet;
  }

  /** @deprecated */
  public DNSEntry getDNSEntry(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass)
  {
    monitorenter;
    Object localObject1 = null;
    try
    {
      Collection localCollection = getDNSEntryList(paramString);
      Iterator localIterator;
      if (localCollection != null)
      {
        localIterator = localCollection.iterator();
        boolean bool1 = localIterator.hasNext();
        if (bool1)
          break label45;
      }
      while (true)
      {
        return localObject1;
        label45: DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
        if (!localDNSEntry.getRecordType().equals(paramDNSRecordType))
          break;
        if (DNSRecordClass.CLASS_ANY != paramDNSRecordClass)
        {
          boolean bool2 = localDNSEntry.getRecordClass().equals(paramDNSRecordClass);
          if (!bool2)
            break;
        }
        localObject1 = localDNSEntry;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject2;
  }

  /** @deprecated */
  public DNSEntry getDNSEntry(DNSEntry paramDNSEntry)
  {
    monitorenter;
    Object localObject1 = null;
    if (paramDNSEntry != null);
    try
    {
      Collection localCollection = getDNSEntryList(paramDNSEntry.getKey());
      Iterator localIterator;
      if (localCollection != null)
      {
        localIterator = localCollection.iterator();
        boolean bool1 = localIterator.hasNext();
        if (bool1)
          break label50;
      }
      while (true)
      {
        return localObject1;
        label50: DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
        boolean bool2 = localDNSEntry.isSameEntry(paramDNSEntry);
        if (!bool2)
          break;
        localObject1 = localDNSEntry;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject2;
  }

  /** @deprecated */
  public Collection<? extends DNSEntry> getDNSEntryList(String paramString)
  {
    monitorenter;
    if (paramString != null);
    try
    {
      String str = paramString.toLowerCase();
      Collection localCollection = (Collection)get(str);
      return localCollection;
      str = null;
    }
    finally
    {
      monitorexit;
    }
  }

  protected Map.Entry<String, List<? extends DNSEntry>> getEntry(String paramString)
  {
    String str;
    Iterator localIterator;
    label22: Object localObject;
    if (paramString != null)
    {
      str = paramString.trim().toLowerCase();
      localIterator = entrySet().iterator();
      if (localIterator.hasNext())
        break label42;
      localObject = null;
    }
    while (true)
    {
      return localObject;
      str = null;
      break;
      label42: Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (str != null)
      {
        if (!str.equals(localEntry.getKey()))
          break label22;
        localObject = localEntry;
        continue;
      }
      if (localEntry.getKey() != null)
        break label22;
      localObject = localEntry;
    }
  }

  public List<? extends DNSEntry> put(String paramString, List<? extends DNSEntry> paramList)
  {
    monitorenter;
    List localList = null;
    try
    {
      Map.Entry localEntry = getEntry(paramString);
      if (localEntry != null)
      {
        localList = (List)localEntry.setValue(paramList);
        return localList;
      }
      entrySet().add(new _CacheEntry(paramString, paramList));
    }
    finally
    {
      monitorexit;
    }
  }

  /** @deprecated */
  public boolean removeDNSEntry(DNSEntry paramDNSEntry)
  {
    monitorenter;
    boolean bool = false;
    if (paramDNSEntry != null);
    try
    {
      Collection localCollection = getDNSEntryList(paramDNSEntry.getKey());
      if (localCollection != null)
      {
        bool = localCollection.remove(paramDNSEntry);
        if (localCollection.size() == 0)
          remove(paramDNSEntry.getKey());
      }
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  /** @deprecated */
  public boolean replaceDNSEntry(DNSEntry paramDNSEntry1, DNSEntry paramDNSEntry2)
  {
    monitorenter;
    int i = 0;
    if ((paramDNSEntry1 != null) && (paramDNSEntry2 != null));
    try
    {
      ArrayList localArrayList;
      if (paramDNSEntry1.getKey().equals(paramDNSEntry2.getKey()))
      {
        Map.Entry localEntry = getEntry(paramDNSEntry1.getKey());
        if (localEntry == null)
          break label99;
        localArrayList = new ArrayList((Collection)localEntry.getValue());
        localArrayList.remove(paramDNSEntry2);
        localArrayList.add(paramDNSEntry1);
        if (localEntry == null)
          break label111;
        localEntry.setValue(localArrayList);
      }
      while (true)
      {
        i = 1;
        return i;
        label99: localArrayList = new ArrayList();
        break;
        label111: entrySet().add(new _CacheEntry(paramDNSEntry1.getKey(), localArrayList));
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  /** @deprecated */
  public String toString()
  {
    monitorenter;
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("\t---- cache ----");
      Iterator localIterator = entrySet().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          String str = localStringBuffer.toString();
          return str;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuffer.append("\n\t\t" + localEntry.toString());
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  protected static class _CacheEntry
    implements Map.Entry<String, List<? extends DNSEntry>>
  {
    private String _key;
    private List<? extends DNSEntry> _value;

    protected _CacheEntry(String paramString, List<? extends DNSEntry> paramList)
    {
      if (paramString != null);
      for (String str = paramString.trim().toLowerCase(); ; str = null)
      {
        this._key = str;
        this._value = paramList;
        return;
      }
    }

    protected _CacheEntry(Map.Entry<String, List<? extends DNSEntry>> paramEntry)
    {
      if ((paramEntry instanceof _CacheEntry))
      {
        this._key = ((_CacheEntry)paramEntry).getKey();
        this._value = ((_CacheEntry)paramEntry).getValue();
      }
    }

    public boolean equals(Object paramObject)
    {
      int i;
      if (!(paramObject instanceof Map.Entry))
        i = 0;
      while (true)
      {
        return i;
        if ((getKey().equals(((Map.Entry)paramObject).getKey())) && (getValue().equals(((Map.Entry)paramObject).getValue())))
        {
          i = 1;
          continue;
        }
        i = 0;
      }
    }

    public String getKey()
    {
      if (this._key != null);
      for (String str = this._key; ; str = "")
        return str;
    }

    public List<? extends DNSEntry> getValue()
    {
      return this._value;
    }

    public int hashCode()
    {
      int i;
      if (this._key == null)
      {
        i = 0;
        if (this._value != null)
          break label33;
      }
      label33: for (int j = 0; ; j = this._value.hashCode())
      {
        return i ^ j;
        i = this._key.hashCode();
        break;
      }
    }

    public List<? extends DNSEntry> setValue(List<? extends DNSEntry> paramList)
    {
      List localList = this._value;
      this._value = paramList;
      return localList;
    }

    /** @deprecated */
    public String toString()
    {
      monitorenter;
      while (true)
      {
        StringBuffer localStringBuffer;
        try
        {
          localStringBuffer = new StringBuffer();
          localStringBuffer.append("\n\t\tname '" + this._key + "'");
          if (this._value != null)
          {
            Iterator localIterator = this._value.iterator();
            if (localIterator.hasNext())
              continue;
            String str = localStringBuffer.toString();
            return str;
            DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
            localStringBuffer.append("\n\t\t\t" + localDNSEntry.toString());
            continue;
          }
        }
        finally
        {
          monitorexit;
        }
        localStringBuffer.append(" no entries");
      }
    }
  }

  static class _EmptyCache extends DNSCache
  {
    public boolean containsKey(Object paramObject)
    {
      return false;
    }

    public boolean containsValue(Object paramObject)
    {
      return false;
    }

    public Set<Map.Entry<String, List<? extends DNSEntry>>> entrySet()
    {
      return Collections.emptySet();
    }

    public boolean equals(Object paramObject)
    {
      if (((paramObject instanceof Map)) && (((Map)paramObject).size() == 0));
      for (int i = 1; ; i = 0)
        return i;
    }

    public List<DNSEntry> get(Object paramObject)
    {
      return null;
    }

    public int hashCode()
    {
      return 0;
    }

    public boolean isEmpty()
    {
      return true;
    }

    public Set<String> keySet()
    {
      return Collections.emptySet();
    }

    public List<? extends DNSEntry> put(String paramString, List<? extends DNSEntry> paramList)
    {
      return null;
    }

    public int size()
    {
      return 0;
    }

    public Collection<List<? extends DNSEntry>> values()
    {
      return Collections.emptySet();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSCache
 * JD-Core Version:    0.6.0
 */