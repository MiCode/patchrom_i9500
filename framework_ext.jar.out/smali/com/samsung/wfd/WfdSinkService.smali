.class public Lcom/samsung/wfd/WfdSinkService;
.super Lcom/samsung/wfd/IWfdSinkManager$Stub;
.source "WfdSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final FLAG_ACTIVITY:I = 0x10000000

.field private static final PATTERN:Ljava/lang/String; = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

.field private static final TAG:Ljava/lang/String; = "WfdSinkService"

.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedDevName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCtrlPort:I

.field private mIntentTimer:Landroid/os/CountDownTimer;

.field private mIpAddr:Ljava/lang/String;

.field private mMacAddr:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Lcom/samsung/wfd/IWfdSinkManager$Stub;-><init>()V

    .line 61
    iput-object v4, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    .line 62
    iput-object v4, p0, Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;

    .line 63
    const v1, 0xc000

    iput v1, p0, Lcom/samsung/wfd/WfdSinkService;->mCtrlPort:I

    .line 65
    iput-object v4, p0, Lcom/samsung/wfd/WfdSinkService;->mMacAddr:Ljava/lang/String;

    .line 66
    iput-object v4, p0, Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/samsung/wfd/WfdSinkService;->mConnectedDevName:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    .line 73
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v1, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 75
    sget-object v1, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 77
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_1

    .line 78
    const-string v1, "WfdSinkService"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sput-object v4, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 85
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdSinkService;Lcom/samsung/wfd/WfdSinkService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void

    .line 82
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    sget-object v1, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdSinkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/wfd/WfdSinkService;->turnOnListenMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WfdSinkService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/wfd/WfdSinkService;->mCtrlPort:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WfdSinkService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WfdSinkService;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/wfd/WfdSinkService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WfdSinkService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/wfd/WfdSinkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WfdSinkService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mMacAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WfdSinkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/wfd/WfdSinkService;->launchWfdPlayer()V

    return-void
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "addr"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 285
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 286
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, subString:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 290
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private launchWfdPlayer()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 181
    :cond_0
    const-string v1, "WfdSinkService"

    const-string v2, "launchWfdPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, tempIntent:Landroid/content/Intent;
    const-string v1, "com.sec.allsharecastplayer"

    const-string v2, "com.sec.allsharecastplayer.WfdPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wfd://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdSinkService;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mUri:Landroid/net/Uri;

    .line 187
    const-string v1, "WfdSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wfd/WfdSinkService;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private requestP2pListen()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "WfdSinkService"

    const-string v1, "requestP2pListen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/wfd/WfdSinkService$2;

    invoke-direct {v2, p0}, Lcom/samsung/wfd/WfdSinkService$2;-><init>(Lcom/samsung/wfd/WfdSinkService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 280
    :cond_0
    return-void
.end method

.method private turnOnListenMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mConnectedDevName:Ljava/lang/String;

    .line 296
    iput-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mMacAddr:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/samsung/wfd/WfdSinkService;->mIpAddr:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lcom/samsung/wfd/WfdSinkService;->requestP2pListen()V

    .line 299
    return-void
.end method


# virtual methods
.method public getIpFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "macAddr"

    .prologue
    const/4 v6, 0x0

    .line 194
    const-string v7, "WfdSinkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIpFromArpTable, mac address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez p1, :cond_0

    move-object v3, v6

    .line 227
    :goto_0
    return-object v3

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 201
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/net/arp"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 205
    .local v4, line:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 206
    if-nez v4, :cond_2

    .line 223
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    move-object v3, v6

    .line 227
    goto :goto_0

    .line 209
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v7, " +"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, splitted:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v7, v5

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    const/4 v7, 0x0

    aget-object v3, v5, v7

    .line 213
    .local v3, ip:Ljava/lang/String;
    const-string v7, "WfdSinkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "converted to"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 223
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v6

    goto :goto_0

    .line 219
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #ip:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #splitted:[Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "WfdSinkService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 224
    :catch_2
    move-exception v7

    goto :goto_2

    .line 222
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 223
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 222
    :goto_5
    throw v6

    .line 224
    :catch_3
    move-exception v7

    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_4
    move-exception v7

    goto :goto_1

    .line 222
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 219
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public setWfdTerminate()Z
    .locals 3

    .prologue
    .line 244
    sget-object v0, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/samsung/wfd/WfdSinkService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/wfd/WfdSinkService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/wfd/WfdSinkService$1;

    invoke-direct {v2, p0}, Lcom/samsung/wfd/WfdSinkService$1;-><init>(Lcom/samsung/wfd/WfdSinkService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public validate(Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"

    .prologue
    .line 237
    const-string v2, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 238
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 239
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method
