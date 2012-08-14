.class public Lcom/strangeberry/jmdns/tools/Browser;
.super Ljavax/swing/JFrame;
.source "Browser.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;
.implements Ljavax/jmdns/ServiceTypeListener;
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fcc82b604f9bc83L


# instance fields
.field info:Ljavax/swing/JTextArea;

.field jmdns:Ljavax/jmdns/JmDNS;

.field serviceList:Ljavax/swing/JList;

.field services:Ljavax/swing/DefaultListModel;

.field type:Ljava/lang/String;

.field typeList:Ljavax/swing/JList;

.field types:Ljavax/swing/DefaultListModel;


# direct methods
.method constructor <init>(Ljavax/jmdns/JmDNS;)V
    .locals 13
    .parameter "mDNS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v8, "JmDNS Browser"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {p0, v8}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 76
    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmdns:Ljavax/jmdns/JmDNS;

    .line 78
    new-instance v0, Ljava/awt/Color;

    #v0=(UninitRef,Ljava/awt/Color;);
    const/16 v8, 0xe6

    #v8=(PosShort);
    const/16 v9, 0xe6

    #v9=(PosShort);
    const/16 v10, 0xe6

    #v10=(PosShort);
    invoke-direct {v0, v8, v9, v10}, Ljava/awt/Color;-><init>(III)V

    .line 79
    .local v0, bg:Ljava/awt/Color;
    #v0=(Reference,Ljava/awt/Color;);
    new-instance v1, Ljavax/swing/border/EmptyBorder;

    #v1=(UninitRef,Ljavax/swing/border/EmptyBorder;);
    const/4 v8, 0x5

    #v8=(PosByte);
    const/4 v9, 0x5

    #v9=(PosByte);
    const/4 v10, 0x5

    #v10=(PosByte);
    const/4 v11, 0x5

    #v11=(PosByte);
    invoke-direct {v1, v8, v9, v10, v11}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    .line 80
    .local v1, border:Ljavax/swing/border/EmptyBorder;
    #v1=(Reference,Ljavax/swing/border/EmptyBorder;);
    invoke-virtual {p0}, Lcom/strangeberry/jmdns/tools/Browser;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    .line 81
    .local v2, content:Ljava/awt/Container;
    #v2=(Reference,Ljava/awt/Container;);
    new-instance v8, Ljava/awt/GridLayout;

    #v8=(UninitRef,Ljava/awt/GridLayout;);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Ljava/awt/GridLayout;-><init>(II)V

    #v8=(Reference,Ljava/awt/GridLayout;);
    invoke-virtual {v2, v8}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 83
    new-instance v8, Ljavax/swing/DefaultListModel;

    #v8=(UninitRef,Ljavax/swing/DefaultListModel;);
    invoke-direct {v8}, Ljavax/swing/DefaultListModel;-><init>()V

    #v8=(Reference,Ljavax/swing/DefaultListModel;);
    iput-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->types:Ljavax/swing/DefaultListModel;

    .line 84
    new-instance v8, Ljavax/swing/JList;

    #v8=(UninitRef,Ljavax/swing/JList;);
    iget-object v9, p0, Lcom/strangeberry/jmdns/tools/Browser;->types:Ljavax/swing/DefaultListModel;

    #v9=(Reference,Ljavax/swing/DefaultListModel;);
    invoke-direct {v8, v9}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    #v8=(Reference,Ljavax/swing/JList;);
    iput-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    .line 85
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v8, v1}, Ljavax/swing/JList;->setBorder(Ljavax/swing/border/Border;)V

    .line 86
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v8, v0}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    .line 87
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v8, v9}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 88
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v8, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 90
    new-instance v7, Ljavax/swing/JPanel;

    #v7=(UninitRef,Ljavax/swing/JPanel;);
    invoke-direct {v7}, Ljavax/swing/JPanel;-><init>()V

    .line 91
    .local v7, typePanel:Ljavax/swing/JPanel;
    #v7=(Reference,Ljavax/swing/JPanel;);
    new-instance v8, Ljava/awt/BorderLayout;

    #v8=(UninitRef,Ljava/awt/BorderLayout;);
    invoke-direct {v8}, Ljava/awt/BorderLayout;-><init>()V

    #v8=(Reference,Ljava/awt/BorderLayout;);
    invoke-virtual {v7, v8}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 92
    const-string v8, "North"

    new-instance v9, Ljavax/swing/JLabel;

    #v9=(UninitRef,Ljavax/swing/JLabel;);
    const-string v10, "Types"

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljavax/swing/JLabel;);
    invoke-virtual {v7, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 93
    const-string v8, "Center"

    new-instance v9, Ljavax/swing/JScrollPane;

    #v9=(UninitRef,Ljavax/swing/JScrollPane;);
    iget-object v10, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    const/16 v11, 0x14

    const/16 v12, 0x1e

    #v12=(PosByte);
    invoke-direct {v9, v10, v11, v12}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    #v9=(Reference,Ljavax/swing/JScrollPane;);
    invoke-virtual {v7, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 94
    invoke-virtual {v2, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 96
    new-instance v8, Ljavax/swing/DefaultListModel;

    #v8=(UninitRef,Ljavax/swing/DefaultListModel;);
    invoke-direct {v8}, Ljavax/swing/DefaultListModel;-><init>()V

    #v8=(Reference,Ljavax/swing/DefaultListModel;);
    iput-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    .line 97
    new-instance v8, Ljavax/swing/JList;

    #v8=(UninitRef,Ljavax/swing/JList;);
    iget-object v9, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-direct {v8, v9}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    #v8=(Reference,Ljavax/swing/JList;);
    iput-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    .line 98
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v8, v1}, Ljavax/swing/JList;->setBorder(Ljavax/swing/border/Border;)V

    .line 99
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v8, v0}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    .line 100
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v8, v9}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 101
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v8, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 103
    new-instance v6, Ljavax/swing/JPanel;

    #v6=(UninitRef,Ljavax/swing/JPanel;);
    invoke-direct {v6}, Ljavax/swing/JPanel;-><init>()V

    .line 104
    .local v6, servicePanel:Ljavax/swing/JPanel;
    #v6=(Reference,Ljavax/swing/JPanel;);
    new-instance v8, Ljava/awt/BorderLayout;

    #v8=(UninitRef,Ljava/awt/BorderLayout;);
    invoke-direct {v8}, Ljava/awt/BorderLayout;-><init>()V

    #v8=(Reference,Ljava/awt/BorderLayout;);
    invoke-virtual {v6, v8}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 105
    const-string v8, "North"

    new-instance v9, Ljavax/swing/JLabel;

    #v9=(UninitRef,Ljavax/swing/JLabel;);
    const-string v10, "Services"

    invoke-direct {v9, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljavax/swing/JLabel;);
    invoke-virtual {v6, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 106
    const-string v8, "Center"

    new-instance v9, Ljavax/swing/JScrollPane;

    #v9=(UninitRef,Ljavax/swing/JScrollPane;);
    iget-object v10, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    const/16 v11, 0x14

    const/16 v12, 0x1e

    invoke-direct {v9, v10, v11, v12}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    #v9=(Reference,Ljavax/swing/JScrollPane;);
    invoke-virtual {v6, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 107
    invoke-virtual {v2, v6}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 109
    new-instance v8, Ljavax/swing/JTextArea;

    #v8=(UninitRef,Ljavax/swing/JTextArea;);
    invoke-direct {v8}, Ljavax/swing/JTextArea;-><init>()V

    #v8=(Reference,Ljavax/swing/JTextArea;);
    iput-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    .line 110
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v8, v1}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 111
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    invoke-virtual {v8, v0}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    .line 112
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v8, v9}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 113
    iget-object v8, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const/4 v9, 0x1

    #v9=(One);
    invoke-virtual {v8, v9}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    .line 115
    new-instance v4, Ljavax/swing/JPanel;

    #v4=(UninitRef,Ljavax/swing/JPanel;);
    invoke-direct {v4}, Ljavax/swing/JPanel;-><init>()V

    .line 116
    .local v4, infoPanel:Ljavax/swing/JPanel;
    #v4=(Reference,Ljavax/swing/JPanel;);
    new-instance v8, Ljava/awt/BorderLayout;

    #v8=(UninitRef,Ljava/awt/BorderLayout;);
    invoke-direct {v8}, Ljava/awt/BorderLayout;-><init>()V

    #v8=(Reference,Ljava/awt/BorderLayout;);
    invoke-virtual {v4, v8}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 117
    const-string v8, "North"

    new-instance v9, Ljavax/swing/JLabel;

    #v9=(UninitRef,Ljavax/swing/JLabel;);
    const-string v10, "Details"

    invoke-direct {v9, v10}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljavax/swing/JLabel;);
    invoke-virtual {v4, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 118
    const-string v8, "Center"

    new-instance v9, Ljavax/swing/JScrollPane;

    #v9=(UninitRef,Ljavax/swing/JScrollPane;);
    iget-object v10, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const/16 v11, 0x14

    const/16 v12, 0x1e

    invoke-direct {v9, v10, v11, v12}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    #v9=(Reference,Ljavax/swing/JScrollPane;);
    invoke-virtual {v4, v8, v9}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 119
    invoke-virtual {v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 121
    const/4 v8, 0x3

    #v8=(PosByte);
    invoke-virtual {p0, v8}, Lcom/strangeberry/jmdns/tools/Browser;->setDefaultCloseOperation(I)V

    .line 122
    const/16 v8, 0x64

    const/16 v9, 0x64

    #v9=(PosByte);
    invoke-virtual {p0, v8, v9}, Lcom/strangeberry/jmdns/tools/Browser;->setLocation(II)V

    .line 123
    const/16 v8, 0x258

    #v8=(PosShort);
    const/16 v9, 0x190

    #v9=(PosShort);
    invoke-virtual {p0, v8, v9}, Lcom/strangeberry/jmdns/tools/Browser;->setSize(II)V

    .line 125
    invoke-virtual {p1, p0}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    .line 130
    const/4 v8, 0x0

    #v8=(Null);
    new-array v5, v8, [Ljava/lang/String;

    .line 132
    .local v5, list:[Ljava/lang/String;
    #v5=(Reference,[Ljava/lang/String;);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v3=(Integer);v8=(Reference,Ljava/lang/String;);
    array-length v8, v5

    #v8=(Integer);
    if-lt v3, v8, :cond_0

    .line 137
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {p0, v8}, Lcom/strangeberry/jmdns/tools/Browser;->setVisible(Z)V

    .line 138
    return-void

    .line 134
    :cond_0
    #v8=(Integer);
    aget-object v8, v5, v3

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v8}, Ljavax/jmdns/JmDNS;->registerServiceType(Ljava/lang/String;)Z

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private dislayInfo(Ljavax/jmdns/ServiceInfo;)V
    .locals 8
    .parameter "service"

    .prologue
    const/16 v7, 0x3a

    #v7=(PosByte);
    const/16 v6, 0xa

    .line 274
    #v6=(PosByte);
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v3=(Reference,Ljava/io/PrintStream;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "INFO: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    if-nez p1, :cond_0

    .line 277
    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v4, "service not found"

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 305
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 281
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/16 v3, 0x2e

    #v3=(PosByte);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    #v3=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPropertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, names:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    #v1=(Reference,Ljava/util/Enumeration;);v2=(Conflicted);v3=(Conflicted);
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    #v3=(Reference,Ljavax/swing/JTextArea;);
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    #v3=(Boolean);
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljava/lang/String;

    .line 297
    .local v2, prop:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const/16 v3, 0x3d

    #v3=(PosByte);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {p1, v2}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lcom/strangeberry/jmdns/tools/Browser;

    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Browser;);
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/JmDNS;);
    invoke-direct {v0, v1}, Lcom/strangeberry/jmdns/tools/Browser;-><init>(Ljavax/jmdns/JmDNS;)V

    .line 365
    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    return-void
.end method


# virtual methods
.method insertSorted(Ljavax/swing/DefaultListModel;Ljava/lang/String;)V
    .locals 3
    .parameter "model"
    .parameter "value"

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    #v0=(Null);
    invoke-virtual {p1}, Ljavax/swing/DefaultListModel;->getSize()I

    move-result v1

    .end local p0
    .local v1, n:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);
    if-lt v0, v1, :cond_0

    .line 230
    invoke-virtual {p1, p2}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    .line 231
    :goto_1
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1, v0}, Ljavax/swing/DefaultListModel;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-gez v2, :cond_1

    .line 226
    invoke-virtual {p1, p2, v0}, Ljavax/swing/DefaultListModel;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 148
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, name:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v1=(Reference,Ljava/io/PrintStream;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "ADD: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$1;

    #v1=(UninitRef,Lcom/strangeberry/jmdns/tools/Browser$1;);
    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$1;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    #v1=(Reference,Lcom/strangeberry/jmdns/tools/Browser$1;);
    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 167
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, name:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v1=(Reference,Ljava/io/PrintStream;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "REMOVE: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$2;

    #v1=(UninitRef,Lcom/strangeberry/jmdns/tools/Browser$2;);
    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$2;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    #v1=(Reference,Lcom/strangeberry/jmdns/tools/Browser$2;);
    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, name:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v1=(Reference,Ljava/io/PrintStream;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "RESOLVED: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v1}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-direct {p0, v1}, Lcom/strangeberry/jmdns/tools/Browser;->dislayInfo(Ljavax/jmdns/ServiceInfo;)V

    .line 188
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 198
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, aType:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v1=(Reference,Ljava/io/PrintStream;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "TYPE: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/strangeberry/jmdns/tools/Browser$3;

    #v1=(UninitRef,Lcom/strangeberry/jmdns/tools/Browser$3;);
    invoke-direct {v1, p0, v0}, Lcom/strangeberry/jmdns/tools/Browser$3;-><init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V

    #v1=(Reference,Lcom/strangeberry/jmdns/tools/Browser$3;);
    invoke-static {v1}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v0=(Reference,Ljava/io/PrintStream;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "SUBTYPE: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const-string v0, "RVBROWSER"

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 240
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 242
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    #v3=(Reference,Ljavax/swing/JList;);
    if-ne v2, v3, :cond_1

    .line 244
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->typeList:Ljavax/swing/JList;

    invoke-virtual {v2}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    .line 245
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "VALUE CHANGED: type: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmdns:Ljavax/jmdns/JmDNS;

    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 247
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Ljavax/swing/DefaultListModel;->setSize(I)V

    .line 248
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmdns:Ljavax/jmdns/JmDNS;

    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 270
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 254
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Ljava/lang/Object;);v3=(Reference,Ljavax/swing/JList;);v4=(Uninit);
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    if-ne v2, v3, :cond_0

    .line 256
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->serviceList:Ljavax/swing/JList;

    invoke-virtual {v2}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, name:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "VALUE CHANGED: type: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    if-nez v0, :cond_2

    .line 260
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->info:Ljavax/swing/JTextArea;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser;->jmdns:Ljavax/jmdns/JmDNS;

    iget-object v3, p0, Lcom/strangeberry/jmdns/tools/Browser;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 266
    .local v1, service:Ljavax/jmdns/ServiceInfo;
    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-direct {p0, v1}, Lcom/strangeberry/jmdns/tools/Browser;->dislayInfo(Ljavax/jmdns/ServiceInfo;)V

    goto :goto_0
.end method
