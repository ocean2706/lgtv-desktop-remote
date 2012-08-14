package javax.jmdns.impl.constants;

public enum DNSState
{
  private final String _name;
  private final StateClass _state;

  static
  {
    ANNOUNCING_1 = new DNSState("ANNOUNCING_1", 3, "announcing 1", StateClass.announcing);
    ANNOUNCING_2 = new DNSState("ANNOUNCING_2", 4, "announcing 2", StateClass.announcing);
    ANNOUNCED = new DNSState("ANNOUNCED", 5, "announced", StateClass.announced);
    CANCELING_1 = new DNSState("CANCELING_1", 6, "canceling 1", StateClass.canceling);
    CANCELING_2 = new DNSState("CANCELING_2", 7, "canceling 2", StateClass.canceling);
    CANCELING_3 = new DNSState("CANCELING_3", 8, "canceling 3", StateClass.canceling);
    CANCELED = new DNSState("CANCELED", 9, "canceled", StateClass.canceled);
    DNSState[] arrayOfDNSState = new DNSState[10];
    arrayOfDNSState[0] = PROBING_1;
    arrayOfDNSState[1] = PROBING_2;
    arrayOfDNSState[2] = PROBING_3;
    arrayOfDNSState[3] = ANNOUNCING_1;
    arrayOfDNSState[4] = ANNOUNCING_2;
    arrayOfDNSState[5] = ANNOUNCED;
    arrayOfDNSState[6] = CANCELING_1;
    arrayOfDNSState[7] = CANCELING_2;
    arrayOfDNSState[8] = CANCELING_3;
    arrayOfDNSState[9] = CANCELED;
    ENUM$VALUES = arrayOfDNSState;
  }

  private DNSState(String arg3, StateClass arg4)
  {
    Object localObject1;
    this._name = localObject1;
    Object localObject2;
    this._state = localObject2;
  }

  public final DNSState advance()
  {
    DNSState localDNSState;
    switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSState()[ordinal()])
    {
    default:
      localDNSState = this;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    }
    while (true)
    {
      return localDNSState;
      localDNSState = PROBING_2;
      continue;
      localDNSState = PROBING_3;
      continue;
      localDNSState = ANNOUNCING_1;
      continue;
      localDNSState = ANNOUNCING_2;
      continue;
      localDNSState = ANNOUNCED;
      continue;
      localDNSState = ANNOUNCED;
      continue;
      localDNSState = CANCELING_2;
      continue;
      localDNSState = CANCELING_3;
      continue;
      localDNSState = CANCELED;
      continue;
      localDNSState = CANCELED;
    }
  }

  public final boolean isAnnounced()
  {
    if (this._state == StateClass.announced);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final boolean isAnnouncing()
  {
    if (this._state == StateClass.announcing);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final boolean isCanceled()
  {
    if (this._state == StateClass.canceled);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final boolean isCanceling()
  {
    if (this._state == StateClass.canceling);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final boolean isProbing()
  {
    if (this._state == StateClass.probing);
    for (int i = 1; ; i = 0)
      return i;
  }

  public final DNSState revert()
  {
    DNSState localDNSState;
    switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSState()[ordinal()])
    {
    default:
      localDNSState = this;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    }
    while (true)
    {
      return localDNSState;
      localDNSState = PROBING_1;
      continue;
      localDNSState = CANCELING_1;
      continue;
      localDNSState = CANCELED;
    }
  }

  public final String toString()
  {
    return this._name;
  }

  private static enum StateClass
  {
    static
    {
      announcing = new StateClass("announcing", 1);
      announced = new StateClass("announced", 2);
      canceling = new StateClass("canceling", 3);
      canceled = new StateClass("canceled", 4);
      StateClass[] arrayOfStateClass = new StateClass[5];
      arrayOfStateClass[0] = probing;
      arrayOfStateClass[1] = announcing;
      arrayOfStateClass[2] = announced;
      arrayOfStateClass[3] = canceling;
      arrayOfStateClass[4] = canceled;
      ENUM$VALUES = arrayOfStateClass;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.constants.DNSState
 * JD-Core Version:    0.6.0
 */