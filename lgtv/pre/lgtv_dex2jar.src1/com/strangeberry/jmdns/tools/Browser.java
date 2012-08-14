package com.strangeberry.jmdns.tools;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.GridLayout;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Enumeration;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceListener;
import javax.jmdns.ServiceTypeListener;
import javax.swing.DefaultListModel;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.table.AbstractTableModel;

public class Browser extends JFrame
  implements ServiceListener, ServiceTypeListener, ListSelectionListener
{
  private static final long serialVersionUID = 5750114542524415107L;
  JTextArea info;
  JmDNS jmdns;
  JList serviceList;
  DefaultListModel services;
  String type;
  JList typeList;
  DefaultListModel types;

  Browser(JmDNS paramJmDNS)
    throws IOException
  {
    super("JmDNS Browser");
    this.jmdns = paramJmDNS;
    Color localColor = new Color(230, 230, 230);
    EmptyBorder localEmptyBorder = new EmptyBorder(5, 5, 5, 5);
    Container localContainer = getContentPane();
    localContainer.setLayout(new GridLayout(1, 3));
    this.types = new DefaultListModel();
    this.typeList = new JList(this.types);
    this.typeList.setBorder(localEmptyBorder);
    this.typeList.setBackground(localColor);
    this.typeList.setSelectionMode(0);
    this.typeList.addListSelectionListener(this);
    JPanel localJPanel1 = new JPanel();
    localJPanel1.setLayout(new BorderLayout());
    localJPanel1.add("North", new JLabel("Types"));
    localJPanel1.add("Center", new JScrollPane(this.typeList, 20, 30));
    localContainer.add(localJPanel1);
    this.services = new DefaultListModel();
    this.serviceList = new JList(this.services);
    this.serviceList.setBorder(localEmptyBorder);
    this.serviceList.setBackground(localColor);
    this.serviceList.setSelectionMode(0);
    this.serviceList.addListSelectionListener(this);
    JPanel localJPanel2 = new JPanel();
    localJPanel2.setLayout(new BorderLayout());
    localJPanel2.add("North", new JLabel("Services"));
    localJPanel2.add("Center", new JScrollPane(this.serviceList, 20, 30));
    localContainer.add(localJPanel2);
    this.info = new JTextArea();
    this.info.setBorder(localEmptyBorder);
    this.info.setBackground(localColor);
    this.info.setEditable(false);
    this.info.setLineWrap(true);
    JPanel localJPanel3 = new JPanel();
    localJPanel3.setLayout(new BorderLayout());
    localJPanel3.add("North", new JLabel("Details"));
    localJPanel3.add("Center", new JScrollPane(this.info, 20, 30));
    localContainer.add(localJPanel3);
    setDefaultCloseOperation(3);
    setLocation(100, 100);
    setSize(600, 400);
    paramJmDNS.addServiceTypeListener(this);
    String[] arrayOfString = new String[0];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString.length)
      {
        setVisible(true);
        return;
      }
      paramJmDNS.registerServiceType(arrayOfString[i]);
    }
  }

  private void dislayInfo(ServiceInfo paramServiceInfo)
  {
    System.out.println("INFO: " + paramServiceInfo);
    if (paramServiceInfo == null)
    {
      this.info.setText("service not found");
      return;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramServiceInfo.getName());
    localStringBuffer.append('.');
    localStringBuffer.append(paramServiceInfo.getTypeWithSubtype());
    localStringBuffer.append('\n');
    localStringBuffer.append(paramServiceInfo.getServer());
    localStringBuffer.append(':');
    localStringBuffer.append(paramServiceInfo.getPort());
    localStringBuffer.append('\n');
    localStringBuffer.append(paramServiceInfo.getInetAddress());
    localStringBuffer.append(':');
    localStringBuffer.append(paramServiceInfo.getPort());
    localStringBuffer.append('\n');
    Enumeration localEnumeration = paramServiceInfo.getPropertyNames();
    while (true)
    {
      if (!localEnumeration.hasMoreElements())
      {
        this.info.setText(localStringBuffer.toString());
        break;
      }
      String str = (String)localEnumeration.nextElement();
      localStringBuffer.append(str);
      localStringBuffer.append('=');
      localStringBuffer.append(paramServiceInfo.getPropertyString(str));
      localStringBuffer.append('\n');
    }
  }

  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    new Browser(JmDNS.create());
  }

  void insertSorted(DefaultListModel paramDefaultListModel, String paramString)
  {
    int i = 0;
    int j = paramDefaultListModel.getSize();
    while (true)
    {
      if (i >= j)
        paramDefaultListModel.addElement(paramString);
      while (true)
      {
        return;
        if (paramString.compareToIgnoreCase((String)paramDefaultListModel.elementAt(i)) >= 0)
          break;
        paramDefaultListModel.insertElementAt(paramString, i);
      }
      i++;
    }
  }

  public void serviceAdded(ServiceEvent paramServiceEvent)
  {
    String str = paramServiceEvent.getName();
    System.out.println("ADD: " + str);
    SwingUtilities.invokeLater(new Runnable(str)
    {
      public void run()
      {
        Browser.this.insertSorted(Browser.this.services, this.val$name);
      }
    });
  }

  public void serviceRemoved(ServiceEvent paramServiceEvent)
  {
    String str = paramServiceEvent.getName();
    System.out.println("REMOVE: " + str);
    SwingUtilities.invokeLater(new Runnable(str)
    {
      public void run()
      {
        Browser.this.services.removeElement(this.val$name);
      }
    });
  }

  public void serviceResolved(ServiceEvent paramServiceEvent)
  {
    String str = paramServiceEvent.getName();
    System.out.println("RESOLVED: " + str);
    if (str.equals(this.serviceList.getSelectedValue()))
      dislayInfo(paramServiceEvent.getInfo());
  }

  public void serviceTypeAdded(ServiceEvent paramServiceEvent)
  {
    String str = paramServiceEvent.getType();
    System.out.println("TYPE: " + str);
    SwingUtilities.invokeLater(new Runnable(str)
    {
      public void run()
      {
        Browser.this.insertSorted(Browser.this.types, this.val$aType);
      }
    });
  }

  public void subTypeForServiceTypeAdded(ServiceEvent paramServiceEvent)
  {
    System.out.println("SUBTYPE: " + paramServiceEvent.getType());
  }

  public String toString()
  {
    return "RVBROWSER";
  }

  public void valueChanged(ListSelectionEvent paramListSelectionEvent)
  {
    if (!paramListSelectionEvent.getValueIsAdjusting())
    {
      if (paramListSelectionEvent.getSource() != this.typeList)
        break label108;
      this.type = ((String)this.typeList.getSelectedValue());
      System.out.println("VALUE CHANGED: type: " + this.type);
      this.jmdns.removeServiceListener(this.type, this);
      this.services.setSize(0);
      this.info.setText("");
      if (this.type != null)
        this.jmdns.addServiceListener(this.type, this);
    }
    while (true)
    {
      return;
      label108: if (paramListSelectionEvent.getSource() == this.serviceList)
      {
        String str = (String)this.serviceList.getSelectedValue();
        System.out.println("VALUE CHANGED: type: " + this.type + " service: " + str);
        if (str == null)
        {
          this.info.setText("");
          continue;
        }
        dislayInfo(this.jmdns.getServiceInfo(this.type, str));
        continue;
      }
    }
  }

  class ServiceTableModel extends AbstractTableModel
  {
    private static final long serialVersionUID = 5607994569609827570L;

    ServiceTableModel()
    {
    }

    public int getColumnCount()
    {
      return 1;
    }

    public String getColumnName(int paramInt)
    {
      String str;
      switch (paramInt)
      {
      default:
        str = null;
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        return str;
        str = "service";
        continue;
        str = "address";
        continue;
        str = "port";
        continue;
        str = "text";
      }
    }

    public int getRowCount()
    {
      return Browser.this.services.size();
    }

    public Object getValueAt(int paramInt1, int paramInt2)
    {
      return Browser.this.services.elementAt(paramInt1);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.strangeberry.jmdns.tools.Browser
 * JD-Core Version:    0.6.0
 */