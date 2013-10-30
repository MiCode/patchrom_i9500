.class public Lcom/nuance/swype/connect/ConnectManager;
.super Ljava/lang/Thread;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/ConnectManager$MessageHandler;
    }
.end annotation


# static fields
.field private static final BACKDOWN_MAX:I = 0x80

.field private static final BACKDOWN_START:I = 0x2

.field private static final BACKDOWN_STEP:I = 0x4

.field private static COMPRESSION_THRESHOLD:I = 0x0

.field public static final CONNECT_COMMAND_REQUEST:Ljava/lang/String; = "C002"

.field public static final CONNECT_COMMAND_RESPONSE:Ljava/lang/String; = "C003"

.field public static final CONNECT_DATAPOINT_DATA:Ljava/lang/String; = "C001"

.field public static final CONNECT_DATAPOINT_DATA_CELLULAR_RX:Ljava/lang/String; = "CELLULAR_RX"

.field public static final CONNECT_DATAPOINT_DATA_CELLULAR_TX:Ljava/lang/String; = "CELLULAR_TX"

.field public static final CONNECT_DATAPOINT_DATA_TOTAL_RX:Ljava/lang/String; = "TOTAL_RX"

.field public static final CONNECT_DATAPOINT_DATA_TOTAL_TX:Ljava/lang/String; = "TOTAL_TX"

.field private static DELAY_BETWEEN_CONNECTIONS:I = 0x0

.field public static final MANAGER_NAME:Ljava/lang/String; = "connection"

.field private static MAX_DELAY_SECONDS:I = 0x0

.field private static final MESSAGE_DELAY_PROCESS:I = 0x1

.field private static final MESSAGE_HANDLE_CALLBACK:I = 0x2

.field private static final MESSAGE_HANDLE_CANCEL:I = 0x5

.field private static final MESSAGE_HANDLE_FAILURE:I = 0x4

.field private static final MESSAGE_HANDLE_IOEXCEPTION:I = 0x3

.field private static final MESSAGE_HANDLE_NETWORK_TIMEOUT:I = 0x6

.field private static final MESSAGE_LAST:I = 0x6


# instance fields
.field private volatile backdownCounter:I

.field private client:Lcom/nuance/swype/connect/ConnectClient;

.field private volatile commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/nuance/swype/connect/util/Command;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDelayChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private defaultDelaySeconds:I

.field private volatile delayQueueProcessing:Z

.field private volatile deviceId:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private volatile hasConnectivity:Z

.field private volatile isRunning:Z

.field private lastRxBytes:J

.field private lastTxBytes:J

.field private volatile mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

.field private mqttEnabled:Z

.field private mqttEnabledChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

.field private networkTimeout:I

.field private networkTimeoutOccured:Z

.field protected networkTimeoutRunnable:Ljava/lang/Runnable;

.field private networkUsageLengthListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private processingCommand:Lcom/nuance/swype/connect/util/Command;

.field private volatile quit:Z

.field private requestKey:Ljava/lang/String;

.field responseListener:Lcom/nuance/swype/connect/ConnectClient$ResponseListener;

.field private serverURL:Ljava/lang/String;

.field private serverUrlChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private volatile sessionId:Ljava/lang/String;

.field private trackNetworkUsageLength:I

.field private trackNetworkUsageStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x4f1a00

    sput v0, Lcom/nuance/swype/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    .line 77
    const/16 v0, 0x1f4

    sput v0, Lcom/nuance/swype/connect/ConnectManager;->DELAY_BETWEEN_CONNECTIONS:I

    .line 78
    const/16 v0, 0xc8

    sput v0, Lcom/nuance/swype/connect/ConnectManager;->COMPRESSION_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 2
    .parameter "connectClient"

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 75
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    .line 102
    iput-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z

    .line 103
    iput-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    .line 110
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->encoding:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mqttEnabled:Z

    .line 143
    iput-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    .line 146
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$1;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->serverUrlChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 154
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$2;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelayChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 162
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$3;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mqttEnabledChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 170
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$4;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkUsageLengthListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 183
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$5;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    .line 219
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager$6;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    .line 232
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 233
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 234
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/ConnectManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager;->serverURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/nuance/swype/connect/ConnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/connect/ConnectManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/nuance/swype/connect/ConnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectManager;->mqttEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/nuance/swype/connect/ConnectManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageLength:I

    return p1
.end method

.method static synthetic access$402(Lcom/nuance/swype/connect/ConnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z

    return p1
.end method

.method static synthetic access$502(Lcom/nuance/swype/connect/ConnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/ConnectManager;)Lcom/nuance/swype/connect/ConnectManager$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/connect/ConnectManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    return p1
.end method

.method static synthetic access$802(Lcom/nuance/swype/connect/ConnectManager;Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/ConnectManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    return v0
.end method

.method private allowsOutput()Z
    .locals 3

    .prologue
    .line 631
    const/4 v0, 0x1

    .line 633
    .local v0, allowed:Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 638
    :cond_0
    return v0
.end method

.method private analyticsWriteRequest(Lcom/nuance/swype/connect/util/Command;J)V
    .locals 9
    .parameter "command"
    .parameter "length"

    .prologue
    .line 1528
    const-string v1, "C002"

    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectManager;->commandToURL(Lcom/nuance/swype/connect/util/Command;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/ConnectManager;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 1531
    .local v8, request:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(ILandroid/os/Bundle;)V

    .line 1532
    return-void
.end method

.method private analyticsWriteResponse(Lcom/nuance/swype/connect/util/Command;I)V
    .locals 9
    .parameter "command"
    .parameter "length"

    .prologue
    .line 1539
    const-string v1, "C003"

    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectManager;->commandToURL(Lcom/nuance/swype/connect/util/Command;)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p2

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/ConnectManager;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 1542
    .local v8, response:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(ILandroid/os/Bundle;)V

    .line 1543
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->stop()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 348
    iput-object v2, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 349
    iput-object v2, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    .line 350
    return-void
.end method

.method private commandToURL(Lcom/nuance/swype/connect/util/Command;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->serverURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v0, urlBuilder:Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    iget v1, p1, Lcom/nuance/swype/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1517
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private connectToUrl(Lcom/nuance/swype/connect/util/Command;)Ljava/net/HttpURLConnection;
    .locals 12
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1427
    const/4 v8, 0x0

    .line 1430
    .local v8, connection:Ljava/net/HttpURLConnection;
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 1431
    iget-object v11, p1, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 1436
    .local v11, urlString:Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v10, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :goto_1
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1450
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8           #connection:Ljava/net/HttpURLConnection;
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 1455
    .restart local v8       #connection:Ljava/net/HttpURLConnection;
    :goto_2
    return-object v8

    .line 1433
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlString:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectManager;->commandToURL(Lcom/nuance/swype/connect/util/Command;)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #urlString:Ljava/lang/String;
    goto :goto_0

    .line 1442
    .restart local v10       #url:Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 1444
    .local v9, ex:Ljava/net/URISyntaxException;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    goto :goto_1

    .line 1452
    .end local v0           #uri:Ljava/net/URI;
    .end local v9           #ex:Ljava/net/URISyntaxException;
    :cond_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8           #connection:Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .restart local v8       #connection:Ljava/net/HttpURLConnection;
    goto :goto_2
.end method

.method private generateBody(Lcom/nuance/swype/connect/util/Command;)Lorg/json/JSONObject;
    .locals 13
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1086
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1088
    .local v0, body:Lorg/json/JSONObject;
    iget-boolean v10, p1, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    if-eqz v10, :cond_0

    .line 1089
    const-string v10, "5"

    iget-object v11, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    :cond_0
    iget-boolean v10, p1, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    if-eqz v10, :cond_1

    .line 1093
    const-string v10, "3"

    iget-object v11, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1097
    :cond_1
    const-string v10, "0"

    iget-object v11, p0, Lcom/nuance/swype/connect/ConnectManager;->requestKey:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 1101
    const-string v10, "4"

    iget-object v11, p1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1104
    :cond_2
    iget-object v10, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v10}, Lcom/nuance/swype/connect/ConnectClient;->getDebugResponse()I

    move-result v1

    .line 1105
    .local v1, debugResponse:I
    const/high16 v10, -0x8000

    if-le v1, v10, :cond_3

    .line 1106
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding debug response request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1107
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v11, "debug"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_3
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1112
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1114
    .local v5, key:Ljava/lang/String;
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1116
    .local v7, value:Ljava/lang/Object;
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 1117
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1118
    :cond_4
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_5

    .line 1119
    check-cast v7, Ljava/lang/Long;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1120
    .restart local v7       #value:Ljava/lang/Object;
    :cond_5
    instance-of v10, v7, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    .line 1121
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1122
    .restart local v7       #value:Ljava/lang/Object;
    :cond_6
    instance-of v10, v7, Ljava/lang/Boolean;

    if-eqz v10, :cond_7

    .line 1123
    check-cast v7, Ljava/lang/Boolean;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1124
    .restart local v7       #value:Ljava/lang/Object;
    :cond_7
    instance-of v10, v7, Ljava/util/HashMap;

    if-eqz v10, :cond_9

    .line 1125
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1126
    .local v6, property:Lorg/json/JSONObject;
    check-cast v7, Ljava/util/HashMap;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1127
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1128
    .local v8, valueKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1129
    .local v9, valueValue:Ljava/lang/String;
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1131
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v8           #valueKey:Ljava/lang/String;
    .end local v9           #valueValue:Ljava/lang/String;
    :cond_8
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1132
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #property:Lorg/json/JSONObject;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_9
    instance-of v10, v7, Lorg/json/JSONObject;

    if-eqz v10, :cond_a

    .line 1133
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1134
    :cond_a
    instance-of v10, v7, Lorg/json/JSONArray;

    if-eqz v10, :cond_b

    .line 1135
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1137
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: unusable key type key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1141
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_c
    return-object v0
.end method

.method private generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;
    .locals 4
    .parameter "id"
    .parameter "name"
    .parameter "value"
    .parameter "interval"
    .parameter "timestamp"

    .prologue
    .line 1573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1574
    .local v0, stat:Landroid/os/Bundle;
    const-string v1, "STAT_TYPE"

    const-string v2, "aggregate"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v1, "STAT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v1, "STAT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v1, "STAT_POINT_VALUE"

    long-to-double v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1578
    const-string v1, "STAT_POINT_INTERVAL"

    int-to-double v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1579
    const-string v1, "STAT_TIMESTAMP"

    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1581
    return-object v0
.end method

.method private hasSufficientSpace(I)Z
    .locals 9
    .parameter "length"

    .prologue
    .line 618
    new-instance v6, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 619
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 620
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 621
    .local v0, availableBlocks:J
    mul-long v4, v0, v2

    .line 622
    .local v4, freeSpace:J
    int-to-long v7, p1

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "commandFamily"
    .parameter "command"

    .prologue
    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, isInQueue:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1470
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/util/Command;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1471
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/util/Command;

    .line 1472
    .local v2, queuedCommand:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1474
    const/4 v0, 0x1

    .line 1478
    .end local v2           #queuedCommand:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    return v0
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .parameter "commandFamily"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1482
    .local p2, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1484
    .local v0, isInQueue:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1485
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/util/Command;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/util/Command;

    .line 1487
    .local v2, queuedCommand:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1489
    const/4 v0, 0x1

    .line 1493
    .end local v2           #queuedCommand:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    return v0
.end method

.method private managerStartComplete()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private processCancel(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 1406
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1407
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1408
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1409
    return-void
.end method

.method private processCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "handle"
    .parameter "command"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    if-eqz v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const/4 v0, 0x0

    .line 647
    .local v0, processedMQTT:Z
    iget-boolean v1, p2, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mqttEnabled:Z

    if-eqz v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/connect/ConnectClient;->processMQTTCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 650
    const/4 v0, 0x1

    .line 654
    :cond_2
    if-nez v0, :cond_0

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/ConnectManager;->processCommandHTTP(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private processCommandHTTP(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;)V
    .locals 52
    .parameter "handle"
    .parameter "command"

    .prologue
    .line 674
    const/16 v43, 0x0

    .line 675
    .local v43, serverConn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 676
    .local v8, connectionError:Z
    const/16 v22, 0x0

    .line 677
    .local v22, ioException:Z
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swype/connect/util/Command;->shortString()Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, commandDesc:Ljava/lang/String;
    const/4 v10, 0x0

    .line 680
    .local v10, downloadFileHandler:Ljava/io/File;
    const/16 v31, 0x0

    .line 681
    .local v31, rangeDownload:Z
    const-wide/16 v32, 0x0

    .line 683
    .local v32, rangeLength:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageLength:I

    move/from16 v48, v0

    const/16 v49, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_3

    .line 691
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageStart:J

    move-wide/from16 v48, v0

    const-wide/high16 v50, -0x8000

    cmp-long v48, v48, v50

    if-nez v48, :cond_2

    .line 692
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v48

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageStart:J

    .line 695
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageLength:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nuance/swype/connect/ConnectManager;->trackNetworkUsageStart:J

    move-wide/from16 v49, v0

    invoke-static/range {v48 .. v50}, Lcom/nuance/swype/connect/util/TimeConversion;->convertHoursToTimeStamp(IJ)J

    move-result-wide v48

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v50

    cmp-long v48, v48, v50

    if-lez v48, :cond_3

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->flushAnalytics()V

    .line 701
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutStart()V

    .line 704
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->connectToUrl(Lcom/nuance/swype/connect/util/Command;)Ljava/net/HttpURLConnection;

    move-result-object v43

    .line 705
    const-string v48, "http.keepAlive"

    const-string v49, "false"

    invoke-static/range {v48 .. v49}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    const/16 v48, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 709
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    move-object/from16 v48, v0

    if-eqz v48, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v48

    if-lez v48, :cond_5

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v48, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Lcom/nuance/swype/connect/ConnectClient;->doesFileExist(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_4

    .line 711
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 712
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .local v11, downloadFileHandler:Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v48

    if-eqz v48, :cond_2a

    .line 713
    invoke-virtual {v11}, Ljava/io/File;->length()J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-result-wide v32

    move-object v10, v11

    .line 717
    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    :cond_4
    :goto_1
    const-wide/16 v48, 0x0

    cmp-long v48, v32, v48

    if-lez v48, :cond_5

    .line 718
    :try_start_2
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager processCommand() - Seeking to: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 719
    const-string v48, "Range"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "bytes="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const/16 v31, 0x1

    .line 724
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->allowsOutput()Z

    move-result v48

    if-eqz v48, :cond_6

    .line 726
    const/16 v48, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 728
    :cond_6
    const/16 v48, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 729
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 731
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager processCommand()  URL: ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 732
    const-wide/16 v41, 0x0

    .line 734
    .local v41, sendLength:J
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    move-object/from16 v48, v0

    const-string v49, "PUT"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    move-object/from16 v48, v0

    if-eqz v48, :cond_10

    .line 735
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager PUT request "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 736
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v48

    if-nez v48, :cond_d

    .line 740
    new-instance v48, Ljava/io/IOException;

    const-string v49, "File does not exists!"

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 812
    .end local v15           #f:Ljava/io/File;
    .end local v41           #sendLength:J
    :catch_0
    move-exception v14

    .line 813
    .local v14, ex:Lorg/json/JSONException;
    :goto_2
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - ProtocolException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 815
    const/4 v8, 0x1

    .line 841
    .end local v14           #ex:Lorg/json/JSONException;
    :goto_3
    :try_start_3
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v38

    .line 842
    .local v38, responseCode:I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "serverConn.getResponseCode("

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ") command: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 844
    sparse-switch v38, :sswitch_data_0

    .line 862
    const/4 v8, 0x1

    .line 878
    .end local v38           #responseCode:I
    :cond_7
    :goto_4
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutPush()V

    .line 880
    if-nez v8, :cond_b

    .line 881
    const/16 v23, 0x0

    .line 882
    .local v23, is:Ljava/io/InputStream;
    const/16 v35, 0x0

    .line 883
    .local v35, reader:Ljava/io/BufferedReader;
    const/16 v29, 0x0

    .line 886
    .local v29, os:Ljava/io/BufferedOutputStream;
    :try_start_4
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v26

    .line 887
    .local v26, len:I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() Content-Range: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "Content-Range"

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectManager;->analyticsWriteResponse(Lcom/nuance/swype/connect/util/Command;I)V

    .line 891
    if-eqz v26, :cond_15

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v48

    const-string v49, "json"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_15

    .line 892
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    .line 893
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .local v40, sb:Ljava/lang/StringBuilder;
    new-instance v36, Ljava/io/BufferedReader;

    new-instance v48, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->encoding:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v23

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v49, 0x400

    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 895
    .end local v35           #reader:Ljava/io/BufferedReader;
    .local v36, reader:Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 897
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->close()V

    .line 899
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 900
    .local v44, temp:Ljava/lang/String;
    const-string v48, "ConnectCommunication"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " JSON response: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance v39, Lorg/json/JSONObject;

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 903
    .local v39, result:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager;->processResult(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object/from16 v35, v36

    .line 968
    .end local v36           #reader:Ljava/io/BufferedReader;
    .end local v39           #result:Lorg/json/JSONObject;
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .end local v44           #temp:Ljava/lang/String;
    .restart local v35       #reader:Ljava/io/BufferedReader;
    :cond_8
    :goto_5
    if-eqz v29, :cond_9

    .line 969
    :try_start_6
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    .line 971
    :cond_9
    if-eqz v23, :cond_a

    .line 972
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 974
    :cond_a
    if-eqz v35, :cond_b

    .line 975
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 1000
    .end local v23           #is:Ljava/io/InputStream;
    .end local v26           #len:I
    .end local v29           #os:Ljava/io/BufferedOutputStream;
    .end local v35           #reader:Ljava/io/BufferedReader;
    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutEnd()V

    .line 1002
    if-eqz v43, :cond_c

    .line 1003
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1006
    :cond_c
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    .line 1008
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_26

    .line 1009
    monitor-enter p0

    .line 1011
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1012
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1013
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->processCancel(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 743
    .restart local v15       #f:Ljava/io/File;
    .restart local v41       #sendLength:J
    :cond_d
    const/16 v48, 0x1

    :try_start_8
    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->generateBody(Lcom/nuance/swype/connect/util/Command;)Lorg/json/JSONObject;

    move-result-object v25

    .line 745
    .local v25, json:Lorg/json/JSONObject;
    const-string v48, "Content-Type"

    const-string v49, "application/octet-stream"

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v48, "X-Swype-Connect"

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v48

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v48, v0

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 748
    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-wide v41

    .line 749
    const/16 v29, 0x0

    .line 750
    .local v29, os:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 751
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 753
    .local v17, fis:Ljava/io/FileInputStream;
    :try_start_9
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 754
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 755
    .end local v17           #fis:Ljava/io/FileInputStream;
    .local v18, fis:Ljava/io/FileInputStream;
    :try_start_a
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v48, 0x1000

    move-object/from16 v0, v18

    move/from16 v1, v48

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 756
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v34

    .line 757
    .local v34, readByte:I
    :goto_7
    if-ltz v34, :cond_e

    .line 758
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 759
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v34

    goto :goto_7

    .line 761
    :cond_e
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 763
    :try_start_c
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 764
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 765
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 768
    const-string v48, "ConnectManager sendingFile() --- "

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 810
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v15           #f:Ljava/io/File;
    .end local v18           #fis:Ljava/io/FileInputStream;
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v34           #readByte:I
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager;->analyticsWriteRequest(Lcom/nuance/swype/connect/util/Command;J)V

    .line 811
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 816
    .end local v41           #sendLength:J
    :catch_1
    move-exception v14

    .line 817
    .local v14, ex:Ljava/net/ProtocolException;
    :goto_9
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - ProtocolException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 819
    const/4 v8, 0x1

    .line 838
    goto/16 :goto_3

    .line 763
    .end local v14           #ex:Ljava/net/ProtocolException;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v15       #f:Ljava/io/File;
    .restart local v17       #fis:Ljava/io/FileInputStream;
    .restart local v25       #json:Lorg/json/JSONObject;
    .restart local v29       #os:Ljava/io/OutputStream;
    .restart local v41       #sendLength:J
    :catchall_0
    move-exception v48

    :goto_a
    :try_start_d
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 764
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 765
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    throw v48
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 820
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v15           #f:Ljava/io/File;
    .end local v17           #fis:Ljava/io/FileInputStream;
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v41           #sendLength:J
    :catch_2
    move-exception v14

    .line 821
    .local v14, ex:Ljava/net/URISyntaxException;
    :goto_b
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - URISyntaxException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 823
    const/4 v8, 0x1

    .line 838
    goto/16 :goto_3

    .line 769
    .end local v14           #ex:Ljava/net/URISyntaxException;
    .restart local v41       #sendLength:J
    :cond_10
    :try_start_e
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    move/from16 v48, v0

    if-eqz v48, :cond_f

    .line 771
    const/16 v48, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 773
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->generateBody(Lcom/nuance/swype/connect/util/Command;)Lorg/json/JSONObject;

    move-result-object v25

    .line 774
    .restart local v25       #json:Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->encoding:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 776
    .local v13, encodedBody:[B
    const-string v48, "Content-Type"

    const-string v49, "text/json"

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    array-length v0, v13

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v41, v0

    .line 779
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Size of content: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    array-length v0, v13

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    sget v48, Lcom/nuance/swype/connect/ConnectManager;->COMPRESSION_THRESHOLD:I

    array-length v0, v13

    move/from16 v50, v0

    move/from16 v0, v48

    move/from16 v1, v50

    if-ge v0, v1, :cond_12

    const-string v48, " compressing"

    :goto_c
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 784
    sget v48, Lcom/nuance/swype/connect/ConnectManager;->COMPRESSION_THRESHOLD:I

    array-length v0, v13

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_14

    .line 786
    const-string v48, "Content-Encoding"

    const-string v49, "gzip"

    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-result-object v29

    .line 788
    .restart local v29       #os:Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 791
    .local v19, gos:Ljava/util/zip/GZIPOutputStream;
    :try_start_f
    new-instance v20, Ljava/util/zip/GZIPOutputStream;

    const/16 v48, 0x1000

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 792
    .end local v19           #gos:Ljava/util/zip/GZIPOutputStream;
    .local v20, gos:Ljava/util/zip/GZIPOutputStream;
    :try_start_10
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 793
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 795
    if-eqz v20, :cond_11

    .line 796
    :try_start_11
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 798
    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    .line 807
    .end local v20           #gos:Ljava/util/zip/GZIPOutputStream;
    :goto_d
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager sendingBody() --- "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " --- "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_8

    .line 824
    .end local v6           #body:Ljava/lang/String;
    .end local v13           #encodedBody:[B
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v41           #sendLength:J
    :catch_3
    move-exception v14

    .line 825
    .local v14, ex:Ljava/net/MalformedURLException;
    :goto_e
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - MalformedURLException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 827
    const/4 v8, 0x1

    .line 838
    goto/16 :goto_3

    .line 779
    .end local v14           #ex:Ljava/net/MalformedURLException;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v13       #encodedBody:[B
    .restart local v25       #json:Lorg/json/JSONObject;
    .restart local v41       #sendLength:J
    :cond_12
    :try_start_12
    const-string v48, " not compressing"

    goto/16 :goto_c

    .line 795
    .restart local v19       #gos:Ljava/util/zip/GZIPOutputStream;
    .restart local v29       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v48

    :goto_f
    if-eqz v19, :cond_13

    .line 796
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 798
    :cond_13
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V

    throw v48
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 828
    .end local v6           #body:Ljava/lang/String;
    .end local v13           #encodedBody:[B
    .end local v19           #gos:Ljava/util/zip/GZIPOutputStream;
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v41           #sendLength:J
    :catch_4
    move-exception v14

    .line 829
    .local v14, ex:Ljava/io/IOException;
    :goto_10
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - IOException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 830
    const/4 v8, 0x1

    .line 838
    goto/16 :goto_3

    .line 802
    .end local v14           #ex:Ljava/io/IOException;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v13       #encodedBody:[B
    .restart local v25       #json:Lorg/json/JSONObject;
    .restart local v41       #sendLength:J
    :cond_14
    :try_start_13
    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 803
    .restart local v29       #os:Ljava/io/OutputStream;
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 804
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_d

    .line 831
    .end local v6           #body:Ljava/lang/String;
    .end local v13           #encodedBody:[B
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v41           #sendLength:J
    :catch_5
    move-exception v14

    .line 832
    .local v14, ex:Ljava/lang/NullPointerException;
    :goto_11
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - NullPointerException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 834
    const/4 v8, 0x1

    .line 838
    goto/16 :goto_3

    .line 835
    .end local v14           #ex:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v14

    .line 836
    .local v14, ex:Ljava/lang/Exception;
    :goto_12
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - send - Exception "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 837
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 847
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v38       #responseCode:I
    :sswitch_1
    const/16 v22, 0x1

    .line 848
    goto/16 :goto_4

    .line 851
    :sswitch_2
    if-nez v31, :cond_7

    .line 852
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 867
    .end local v38           #responseCode:I
    :catch_7
    move-exception v12

    .line 868
    .local v12, e:Ljava/io/IOException;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "IOException trying to get response code"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 869
    const/4 v8, 0x1

    .line 876
    goto/16 :goto_4

    .line 870
    .end local v12           #e:Ljava/io/IOException;
    :catch_8
    move-exception v12

    .line 871
    .local v12, e:Ljava/lang/NullPointerException;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "IOException trying to get response code"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v12}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 872
    const/4 v8, 0x1

    .line 876
    goto/16 :goto_4

    .line 873
    .end local v12           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v12

    .line 874
    .local v12, e:Ljava/lang/Exception;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Exception trying to get response code"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 875
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 904
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v23       #is:Ljava/io/InputStream;
    .restart local v26       #len:I
    .local v29, os:Ljava/io/BufferedOutputStream;
    .restart local v35       #reader:Ljava/io/BufferedReader;
    :cond_15
    if-gtz v26, :cond_16

    const/16 v48, -0x1

    move/from16 v0, v26

    move/from16 v1, v48

    if-ne v0, v1, :cond_23

    :cond_16
    :try_start_14
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->hasSufficientSpace(I)Z

    move-result v48

    if-eqz v48, :cond_23

    .line 906
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    move/from16 v37, v0

    .line 907
    .local v37, reportDownload:Z
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v47, v0

    .line 908
    .local v47, totalRead:I
    const/16 v45, 0x0

    .line 909
    .local v45, totalBuffered:I
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v48, v0

    add-int v46, v26, v48

    .line 910
    .local v46, totalFileLength:I
    div-int/lit8 v21, v46, 0x64

    .line 912
    .local v21, interval:I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Downloading file now. total size is: ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "] "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 915
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v48

    if-eqz v48, :cond_17

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v48

    if-nez v48, :cond_18

    .line 916
    :cond_17
    const-string v48, "temp"

    const-string v49, ".zip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/nuance/swype/connect/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v50

    invoke-static/range {v48 .. v50}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 920
    :cond_18
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    .line 922
    new-instance v24, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v43 .. v43}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v48

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 923
    .end local v23           #is:Ljava/io/InputStream;
    .local v24, is:Ljava/io/InputStream;
    :try_start_15
    new-instance v30, Ljava/io/BufferedOutputStream;

    new-instance v48, Ljava/io/FileOutputStream;

    move-object/from16 v0, v48

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 924
    .end local v29           #os:Ljava/io/BufferedOutputStream;
    .local v30, os:Ljava/io/BufferedOutputStream;
    const/16 v16, 0x0

    .line 925
    .local v16, finished:Z
    :cond_19
    if-nez v16, :cond_22

    .line 926
    :try_start_16
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1d

    .line 927
    const-string v48, "ConnectManager.processCommand() - command cancelled"

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 928
    new-instance v48, Ljava/io/IOException;

    const-string v49, "download cancelled"

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 968
    :catchall_2
    move-exception v48

    move-object/from16 v29, v30

    .end local v30           #os:Ljava/io/BufferedOutputStream;
    .restart local v29       #os:Ljava/io/BufferedOutputStream;
    move-object/from16 v23, v24

    .end local v16           #finished:Z
    .end local v21           #interval:I
    .end local v24           #is:Ljava/io/InputStream;
    .end local v26           #len:I
    .end local v37           #reportDownload:Z
    .end local v45           #totalBuffered:I
    .end local v46           #totalFileLength:I
    .end local v47           #totalRead:I
    .restart local v23       #is:Ljava/io/InputStream;
    :goto_13
    if-eqz v29, :cond_1a

    .line 969
    :try_start_17
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedOutputStream;->close()V

    .line 971
    :cond_1a
    if-eqz v23, :cond_1b

    .line 972
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 974
    :cond_1b
    if-eqz v35, :cond_1c

    .line 975
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V

    :cond_1c
    throw v48
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    .line 978
    :catch_a
    move-exception v14

    .line 979
    .local v14, ex:Lorg/json/JSONException;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - recieve - JSONException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 981
    const/4 v8, 0x1

    .line 990
    goto/16 :goto_6

    .line 930
    .end local v14           #ex:Lorg/json/JSONException;
    .end local v23           #is:Ljava/io/InputStream;
    .end local v29           #os:Ljava/io/BufferedOutputStream;
    .restart local v16       #finished:Z
    .restart local v21       #interval:I
    .restart local v24       #is:Ljava/io/InputStream;
    .restart local v26       #len:I
    .restart local v30       #os:Ljava/io/BufferedOutputStream;
    .restart local v37       #reportDownload:Z
    .restart local v45       #totalBuffered:I
    .restart local v46       #totalFileLength:I
    .restart local v47       #totalRead:I
    :cond_1d
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1e

    .line 931
    const-string v48, "ConnectManager.processCommand() - network timed out"

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 932
    new-instance v48, Ljava/io/IOException;

    const-string v49, "timeout occurred"

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 935
    :cond_1e
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->read()I

    move-result v28

    .line 936
    .local v28, oneByte:I
    const/16 v48, -0x1

    move/from16 v0, v28

    move/from16 v1, v48

    if-eq v0, v1, :cond_21

    .line 937
    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 938
    add-int/lit8 v47, v47, 0x1

    .line 939
    add-int/lit8 v45, v45, 0x1

    .line 944
    :goto_14
    if-eqz v37, :cond_20

    move/from16 v0, v45

    move/from16 v1, v21

    if-ge v0, v1, :cond_1f

    const/16 v48, 0x1

    move/from16 v0, v16

    move/from16 v1, v48

    if-ne v0, v1, :cond_20

    .line 945
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutPush()V

    .line 946
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v47

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager;->processDownloadStatusResult(Lcom/nuance/swype/connect/util/Command;II)V

    .line 947
    const/16 v45, 0x0

    .line 951
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/ConnectManager;->isOnline()Z

    move-result v48

    if-nez v48, :cond_19

    .line 952
    new-instance v48, Ljava/io/IOException;

    const-string v49, "Connection lost"

    invoke-direct/range {v48 .. v49}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 941
    :cond_21
    const/16 v16, 0x1

    goto :goto_14

    .line 955
    .end local v28           #oneByte:I
    :cond_22
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedOutputStream;->close()V

    .line 956
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/nuance/swype/connect/ConnectManager;->processFileResult(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-object/from16 v29, v30

    .end local v30           #os:Ljava/io/BufferedOutputStream;
    .restart local v29       #os:Ljava/io/BufferedOutputStream;
    move-object/from16 v23, v24

    .line 958
    .end local v24           #is:Ljava/io/InputStream;
    .restart local v23       #is:Ljava/io/InputStream;
    goto/16 :goto_5

    .end local v16           #finished:Z
    .end local v21           #interval:I
    .end local v37           #reportDownload:Z
    .end local v45           #totalBuffered:I
    .end local v46           #totalFileLength:I
    .end local v47           #totalRead:I
    :cond_23
    if-gtz v26, :cond_24

    const/16 v48, -0x1

    move/from16 v0, v26

    move/from16 v1, v48

    if-ne v0, v1, :cond_25

    :cond_24
    :try_start_19
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->hasSufficientSpace(I)Z

    move-result v48

    if-nez v48, :cond_25

    .line 960
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    move/from16 v37, v0

    .line 961
    .restart local v37       #reportDownload:Z
    if-eqz v37, :cond_8

    .line 962
    const/16 v48, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v48

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager;->processDownloadStatusResult(Lcom/nuance/swype/connect/util/Command;II)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_5

    .line 968
    .end local v26           #len:I
    .end local v37           #reportDownload:Z
    :catchall_3
    move-exception v48

    goto/16 :goto_13

    .line 965
    .restart local v26       #len:I
    :cond_25
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 982
    .end local v26           #len:I
    :catch_b
    move-exception v14

    .line 983
    .local v14, ex:Ljava/io/IOException;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - recieve - IOException "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 985
    const/4 v8, 0x1

    .line 986
    const/16 v22, 0x1

    .line 990
    goto/16 :goto_6

    .line 987
    .end local v14           #ex:Ljava/io/IOException;
    :catch_c
    move-exception v14

    .line 988
    .local v14, ex:Ljava/lang/Exception;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "ConnectManager.processCommand() - recieve - Exception "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 989
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 1012
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v23           #is:Ljava/io/InputStream;
    .end local v29           #os:Ljava/io/BufferedOutputStream;
    .end local v35           #reader:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v48

    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v48

    .line 1014
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    move/from16 v48, v0

    if-eqz v48, :cond_27

    .line 1015
    monitor-enter p0

    .line 1017
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1018
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 1019
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->processNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 1018
    :catchall_5
    move-exception v48

    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    throw v48

    .line 1020
    :cond_27
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v48, v48, v50

    if-nez v48, :cond_0

    .line 1021
    if-nez v8, :cond_28

    .line 1022
    const/16 v48, 0x2

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    .line 1024
    const/16 v48, 0x0

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    .line 1025
    monitor-enter p0

    .line 1027
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1028
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v48

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v48

    .line 1029
    :cond_28
    const/16 v48, 0x1

    move/from16 v0, v22

    move/from16 v1, v48

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    move/from16 v48, v0

    if-nez v48, :cond_29

    .line 1030
    monitor-enter p0

    .line 1032
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1033
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->processIOException(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 1033
    :catchall_7
    move-exception v48

    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v48

    .line 1037
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    move/from16 v49, v0

    mul-int v9, v48, v49

    .line 1038
    .local v9, currentDelaySeconds:I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "Connection Error with Connect Servers, retrying in: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " seconds ("

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ")"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1040
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    .line 1042
    const/16 v48, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    .line 1043
    .local v27, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessageDelayedSeconds(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 968
    .end local v9           #currentDelaySeconds:I
    .end local v27           #msg:Landroid/os/Message;
    .restart local v23       #is:Ljava/io/InputStream;
    .restart local v26       #len:I
    .restart local v29       #os:Ljava/io/BufferedOutputStream;
    .restart local v36       #reader:Ljava/io/BufferedReader;
    .restart local v40       #sb:Ljava/lang/StringBuilder;
    :catchall_8
    move-exception v48

    move-object/from16 v35, v36

    .end local v36           #reader:Ljava/io/BufferedReader;
    .restart local v35       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_13

    .end local v23           #is:Ljava/io/InputStream;
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .restart local v21       #interval:I
    .restart local v24       #is:Ljava/io/InputStream;
    .restart local v37       #reportDownload:Z
    .restart local v45       #totalBuffered:I
    .restart local v46       #totalFileLength:I
    .restart local v47       #totalRead:I
    :catchall_9
    move-exception v48

    move-object/from16 v23, v24

    .end local v24           #is:Ljava/io/InputStream;
    .restart local v23       #is:Ljava/io/InputStream;
    goto/16 :goto_13

    .line 835
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .end local v21           #interval:I
    .end local v23           #is:Ljava/io/InputStream;
    .end local v26           #len:I
    .end local v29           #os:Ljava/io/BufferedOutputStream;
    .end local v35           #reader:Ljava/io/BufferedReader;
    .end local v37           #reportDownload:Z
    .end local v45           #totalBuffered:I
    .end local v46           #totalFileLength:I
    .end local v47           #totalRead:I
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_d
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_12

    .line 831
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_e
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_11

    .line 828
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_f
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_10

    .line 824
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_10
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_e

    .line 820
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_11
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_b

    .line 816
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_12
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_9

    .line 812
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :catch_13
    move-exception v14

    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_2

    .line 795
    .restart local v6       #body:Ljava/lang/String;
    .restart local v13       #encodedBody:[B
    .restart local v20       #gos:Ljava/util/zip/GZIPOutputStream;
    .restart local v25       #json:Lorg/json/JSONObject;
    .local v29, os:Ljava/io/OutputStream;
    .restart local v41       #sendLength:J
    :catchall_a
    move-exception v48

    move-object/from16 v19, v20

    .end local v20           #gos:Ljava/util/zip/GZIPOutputStream;
    .restart local v19       #gos:Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_f

    .line 763
    .end local v6           #body:Ljava/lang/String;
    .end local v13           #encodedBody:[B
    .end local v19           #gos:Ljava/util/zip/GZIPOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v15       #f:Ljava/io/File;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v48

    move-object/from16 v17, v18

    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v17       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v17           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v18       #fis:Ljava/io/FileInputStream;
    :catchall_c
    move-exception v48

    move-object/from16 v17, v18

    .end local v18           #fis:Ljava/io/FileInputStream;
    .restart local v17       #fis:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_a

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #downloadFileHandler:Ljava/io/File;
    .end local v15           #f:Ljava/io/File;
    .end local v17           #fis:Ljava/io/FileInputStream;
    .end local v25           #json:Lorg/json/JSONObject;
    .end local v29           #os:Ljava/io/OutputStream;
    .end local v41           #sendLength:J
    .restart local v11       #downloadFileHandler:Ljava/io/File;
    :cond_2a
    move-object v10, v11

    .end local v11           #downloadFileHandler:Ljava/io/File;
    .restart local v10       #downloadFileHandler:Ljava/io/File;
    goto/16 :goto_1

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_2
        0x193 -> :sswitch_1
        0x196 -> :sswitch_1
    .end sparse-switch
.end method

.method private processDownloadStatusResult(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 3
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDownloadStatusResult() Downloaded: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Total: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1193
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1194
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1195
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1196
    return-void
.end method

.method private processFileResult(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;Ljava/io/File;)V
    .locals 6
    .parameter "handle"
    .parameter "command"
    .parameter "filehandler"

    .prologue
    .line 1153
    const-string v3, "processFileResult()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1157
    new-instance v1, Lcom/nuance/swype/connect/util/Response;

    invoke-direct {v1}, Lcom/nuance/swype/connect/util/Response;-><init>()V

    .line 1159
    .local v1, response:Lcom/nuance/swype/connect/util/Response;
    iget-object v3, p2, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 1160
    iget-object v3, p2, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 1161
    iget-object v3, p2, Lcom/nuance/swype/connect/util/Command;->deviceId:Ljava/lang/String;

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->deviceId:Ljava/lang/String;

    .line 1162
    iget-object v3, p2, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 1163
    iget-object v3, p2, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 1165
    const/4 v3, 0x1

    iput v3, v1, Lcom/nuance/swype/connect/util/Response;->status:I

    .line 1166
    iput-object p2, v1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 1167
    const/4 p2, 0x0

    .line 1169
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Response;->fileLocation:Ljava/lang/String;

    .line 1170
    iput-object p3, v1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    .line 1172
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1173
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1174
    invoke-virtual {p1, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded File: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, status:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1179
    return-void
.end method

.method private processIOException(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 1400
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1401
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1402
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1403
    return-void
.end method

.method private processNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1413
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1414
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    return-void
.end method

.method private processResult(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;Lorg/json/JSONObject;)V
    .locals 14
    .parameter "handle"
    .parameter "command"
    .parameter "result"

    .prologue
    .line 1205
    new-instance v8, Lcom/nuance/swype/connect/util/Response;

    invoke-direct {v8}, Lcom/nuance/swype/connect/util/Response;-><init>()V

    .line 1207
    .local v8, response:Lcom/nuance/swype/connect/util/Response;
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1211
    .local v1, commandProcessed:Ljava/lang/Boolean;
    :try_start_0
    const-string v12, "6"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1212
    const-string v12, "6"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1213
    .local v10, statusResponse:I
    move v9, v10

    .line 1214
    .local v9, status:I
    const-string v12, "6"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1220
    .end local v10           #statusResponse:I
    :goto_0
    iput v9, v8, Lcom/nuance/swype/connect/util/Response;->status:I

    .line 1221
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 1222
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 1223
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 1225
    const-string v12, "5"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1226
    const-string v12, "5"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->deviceId:Ljava/lang/String;

    .line 1227
    const-string v12, "5"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1230
    :cond_0
    const-string v12, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1231
    const-string v12, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->sessionId:Ljava/lang/String;

    .line 1232
    const-string v12, "3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1235
    :cond_1
    const-string v12, "4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1236
    const-string v12, "4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 1237
    const-string v12, "4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1240
    :cond_2
    const-string v12, "51"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1241
    const-string v12, "51"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 1242
    const-string v12, "51"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1245
    :cond_3
    const-string v12, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1247
    const-string v12, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1250
    :cond_4
    const-string v12, "64"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1252
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Debug Info: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "64"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1258
    :cond_5
    sparse-switch v9, :sswitch_data_0

    .line 1347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConnectManager.ProcessResult() UNKNOWN COMMAND: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1353
    :goto_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1355
    .local v7, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1356
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1358
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1359
    .local v11, value:Ljava/lang/Object;
    invoke-virtual {v7, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1364
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #status:I
    .end local v11           #value:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1365
    .local v2, ex:Lorg/json/JSONException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConnectManager.processResult() - JSONException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1370
    .end local v2           #ex:Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1372
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 1373
    const/16 p2, 0x0

    .line 1374
    const/4 v12, 0x2

    invoke-virtual {p1, v12}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1375
    .local v6, msg:Landroid/os/Message;
    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1376
    invoke-virtual {p1, v6}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    .end local v6           #msg:Landroid/os/Message;
    :goto_4
    return-void

    .line 1216
    :cond_6
    :try_start_1
    const-string v12, "No status sent back from server."

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1217
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto/16 :goto_0

    .line 1264
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    const-string v13, "device"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1267
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 1269
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectManager;->deregister()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1366
    .end local v9           #status:I
    :catch_1
    move-exception v2

    .line 1367
    .local v2, ex:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConnectManager.processResult() - Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 1275
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v9       #status:I
    :sswitch_1
    const/4 v12, 0x0

    :try_start_2
    iput-object v12, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    .line 1276
    iget-object v12, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 1277
    iget-object v12, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto/16 :goto_1

    .line 1281
    :sswitch_2
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 1282
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1283
    goto/16 :goto_1

    .line 1288
    :sswitch_3
    iget v12, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    move-object/from16 v0, p2

    iput v12, v0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    goto/16 :goto_1

    .line 1295
    :sswitch_4
    const-string v12, "8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1296
    const-string v12, "8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v8, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    .line 1301
    :goto_5
    iget v12, v8, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    sget v13, Lcom/nuance/swype/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    if-le v12, v13, :cond_8

    .line 1304
    sget v12, Lcom/nuance/swype/connect/ConnectManager;->MAX_DELAY_SECONDS:I

    iput v12, v8, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    .line 1306
    :cond_8
    iget v12, v8, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    move-object/from16 v0, p2

    iput v12, v0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    goto/16 :goto_1

    .line 1298
    :cond_9
    iget v12, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    iput v12, v8, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    goto :goto_5

    .line 1309
    :sswitch_5
    iget-object v12, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1310
    .local v3, h:Landroid/os/Handler;
    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1311
    .restart local v6       #msg:Landroid/os/Message;
    const-string v12, "9"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1312
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1313
    .restart local v7       #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "9"

    const-string v13, "9"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iput-object v7, v8, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    .line 1317
    .end local v7           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1318
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1322
    .end local v3           #h:Landroid/os/Handler;
    .end local v6           #msg:Landroid/os/Message;
    :sswitch_6
    const-string v12, "Client recieved Invalid Argument."

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1323
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1324
    goto/16 :goto_1

    .line 1327
    :sswitch_7
    iget-object v12, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/ConnectClient;->invalidAccount()V

    .line 1328
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1329
    goto/16 :goto_1

    .line 1344
    :sswitch_8
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1345
    goto/16 :goto_1

    .line 1362
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    iput-object v7, v8, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1377
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v7           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9           #status:I
    :cond_c
    move-object/from16 v0, p2

    iget v12, v0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p2

    iput v13, v0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    if-ltz v12, :cond_e

    .line 1379
    move-object/from16 v0, p2

    iget v12, v0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    if-lez v12, :cond_d

    .line 1380
    move-object/from16 v0, p2

    iget v12, v0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    goto/16 :goto_4

    .line 1382
    :cond_d
    iget v12, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    int-to-long v12, v12

    invoke-static {v12, v13}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(J)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    goto/16 :goto_4

    .line 1386
    :cond_e
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 1387
    const/4 v8, 0x0

    .line 1388
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1389
    .restart local v6       #msg:Landroid/os/Message;
    move-object/from16 v0, p2

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1390
    invoke-virtual {p1, v6}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 1258
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1fa -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public declared-synchronized cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 2
    .parameter "command"

    .prologue
    const/4 v0, 0x1

    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCommand() Command is currently being processed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nuance/swype/connect/util/Command;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    const/4 v0, 0x0

    .line 499
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 495
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    .line 497
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deregister()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1504
    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    .line 1505
    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    .line 1506
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 1507
    return-void
.end method

.method public destroyConnection()V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectManager;->flushAnalytics()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->isRunning:Z

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->quit:Z

    .line 340
    return-void
.end method

.method public flushAnalytics()V
    .locals 15

    .prologue
    .line 1550
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    .line 1552
    .local v14, uid:I
    invoke-static {v14}, Lcom/nuance/swype/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v9

    .line 1553
    .local v9, currentRxBytes:J
    const-string v1, "C001"

    const-string v2, "CELLULAR_RX"

    iget-wide v3, p0, Lcom/nuance/swype/connect/ConnectManager;->lastRxBytes:J

    sub-long v3, v9, v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/ConnectManager;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v13

    .line 1556
    .local v13, mobileRx:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v13}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(ILandroid/os/Bundle;)V

    .line 1557
    iput-wide v9, p0, Lcom/nuance/swype/connect/ConnectManager;->lastRxBytes:J

    .line 1559
    invoke-static {v14}, Lcom/nuance/swype/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v11

    .line 1560
    .local v11, currentTxBytes:J
    const-string v1, "C001"

    const-string v2, "CELLULAR_TX"

    iget-wide v3, p0, Lcom/nuance/swype/connect/ConnectManager;->lastTxBytes:J

    sub-long v3, v11, v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/ConnectManager;->generateStatsBundle(Ljava/lang/String;Ljava/lang/String;JIJ)Landroid/os/Bundle;

    move-result-object v8

    .line 1563
    .local v8, cellularTx:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, v8}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(ILandroid/os/Bundle;)V

    .line 1564
    iput-wide v11, p0, Lcom/nuance/swype/connect/ConnectManager;->lastTxBytes:J

    .line 1565
    return-void
.end method

.method protected handleMessage(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Landroid/os/Message;)V
    .locals 9
    .parameter "handle"
    .parameter "message"

    .prologue
    const/16 v8, 0x2e

    .line 359
    iget v6, p2, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    const/16 v6, 0x80

    iget v7, p0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I

    .line 364
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->isClientActive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 370
    const-string v6, "Dropping Response from Server, no active hosts"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/nuance/swype/connect/util/Response;

    if-eqz v6, :cond_5

    .line 375
    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/swype/connect/util/Response;

    .line 376
    .local v4, response:Lcom/nuance/swype/connect/util/Response;
    iget-object v0, v4, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 377
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 379
    .local v3, manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    const/4 v0, 0x0

    .line 381
    if-eqz v3, :cond_4

    .line 383
    iget-object v6, v4, Lcom/nuance/swype/connect/util/Response;->fileLocation:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 384
    new-instance v5, Ljava/io/File;

    iget-object v6, v4, Lcom/nuance/swype/connect/util/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v5, tempfile:Ljava/io/File;
    iput-object v5, v4, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    .line 386
    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onFileResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 407
    .end local v5           #tempfile:Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectManager;->responseListener:Lcom/nuance/swype/connect/ConnectClient$ResponseListener;

    if-eqz v6, :cond_0

    .line 408
    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectManager;->responseListener:Lcom/nuance/swype/connect/ConnectClient$ResponseListener;

    invoke-interface {v6, v4}, Lcom/nuance/swype/connect/ConnectClient$ResponseListener;->onResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 388
    :cond_3
    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 389
    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->isBroadcastResponseEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v2, intentContent:Ljava/lang/StringBuilder;
    const-string v6, "com.nuance.swype.connect.ConnectClient"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v7, v7, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v7, v7, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentContent:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_HANDLE_CALLBACK callback manager is missing!!! command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v7, v7, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v7, v7, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 410
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v3           #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    .end local v4           #response:Lcom/nuance/swype/connect/util/Response;
    :cond_5
    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/nuance/swype/connect/util/Command;

    if-eqz v6, :cond_0

    .line 411
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 412
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 413
    .restart local v3       #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    if-eqz v3, :cond_0

    .line 414
    iget v6, p2, Landroid/os/Message;->arg1:I

    iget v7, p2, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v0, v6, v7}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V

    goto/16 :goto_0

    .line 420
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v3           #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    :pswitch_2
    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/nuance/swype/connect/util/Command;

    if-eqz v6, :cond_0

    .line 421
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 422
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 425
    .restart local v3       #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    invoke-interface {v3, v0}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 430
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v3           #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    :pswitch_3
    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/nuance/swype/connect/util/Command;

    if-eqz v6, :cond_0

    .line 431
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 432
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 435
    .restart local v3       #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v3, v0}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onFailure(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 442
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v3           #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    :pswitch_4
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 443
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 445
    .restart local v3       #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    if-eqz v3, :cond_6

    .line 446
    invoke-interface {v3, v0}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onCancel(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 448
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_HANDLE_CANCEL no callbackManager!!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v3           #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    :pswitch_5
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 454
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 456
    .restart local v3       #manager:Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
    if-eqz v3, :cond_7

    .line 457
    invoke-interface {v3, v0}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 459
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_HANDLE_NETWORK_TIMEOUT no callbackManager!!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z

    return v0
.end method

.method protected networkTimeoutEnd()V
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkTimeoutEnd() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1073
    return-void
.end method

.method protected networkTimeoutPush()V
    .locals 4

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkTimeoutPush() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1062
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1067
    :cond_0
    return-void
.end method

.method protected networkTimeoutStart()V
    .locals 4

    .prologue
    .line 1049
    const-string v0, "networkTimeoutStart()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z

    .line 1052
    iget v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1055
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1057
    :cond_0
    return-void
.end method

.method public processCommandResult(Lcom/nuance/swype/connect/util/Command;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "command"
    .parameter "result"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/connect/ConnectManager;->processResult(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;Lorg/json/JSONObject;)V

    .line 666
    return-void
.end method

.method protected processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;)V
    .locals 1
    .parameter "handle"

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/ConnectManager;->processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;I)V

    .line 507
    return-void
.end method

.method protected processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;I)V
    .locals 11
    .parameter "handle"
    .parameter "location"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    .line 514
    const/4 v3, 0x0

    .line 515
    .local v3, delay:Z
    const/4 v1, 0x0

    .line 517
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iget-boolean v5, p0, Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z

    if-nez v5, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    monitor-enter p0

    .line 522
    if-nez p2, :cond_3

    .line 523
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    move-object v1, v0

    .line 535
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    if-eqz v1, :cond_0

    .line 542
    iget-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->sent:Z

    if-ne v5, v7, :cond_4

    .line 543
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/nuance/swype/connect/ConnectManager;->processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;I)V

    goto :goto_0

    .line 524
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    if-gt p2, v5, :cond_2

    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, currentCount:I
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 527
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/util/Command;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 528
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    move-object v1, v0

    .line 529
    if-eq v2, p2, :cond_2

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    .end local v2           #currentCount:I
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/util/Command;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 547
    :cond_4
    iget-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/system/NetworkState;->isWifi()Z

    move-result v5

    if-nez v5, :cond_5

    .line 548
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/nuance/swype/connect/ConnectManager;->processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;I)V

    goto :goto_0

    .line 552
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string v5, "device"

    sget-object v6, Lcom/nuance/swype/connect/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 557
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    .line 560
    :cond_6
    iget-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    if-eqz v5, :cond_8

    .line 562
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 563
    const-string v5, "device"

    sget-object v6, Lcom/nuance/swype/connect/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 565
    const-string v5, "ProcessCommand()  deviceId is null, no queued register device command found -- sending register request"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 569
    :cond_7
    const/4 v3, 0x1

    .line 573
    :cond_8
    iget-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->deviceId:Ljava/lang/String;

    if-nez v5, :cond_b

    .line 576
    const/4 v3, 0x1

    .line 595
    :cond_9
    :goto_2
    if-nez v3, :cond_d

    iget-wide v5, v1, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_d

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_d

    .line 596
    const/4 v3, 0x1

    .line 601
    :goto_3
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->requestKey:Ljava/lang/String;

    if-nez v5, :cond_a

    .line 603
    invoke-static {}, Lcom/nuance/swype/connect/security/RequestKey;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->requestKey:Ljava/lang/String;

    .line 606
    :cond_a
    if-nez v3, :cond_e

    .line 607
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/connect/ConnectManager;->processCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0

    .line 577
    :cond_b
    if-nez v3, :cond_9

    iget-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 579
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    .line 581
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->sessionId:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 582
    const-string v5, "session"

    const-string v6, "create"

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 583
    const-string v5, "ProcessCommand()  sessionId is null, no queued create session command found -- sending session create request"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 584
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 591
    :cond_c
    const/4 v3, 0x1

    goto :goto_2

    .line 598
    :cond_d
    iput-wide v9, v1, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    goto :goto_3

    .line 609
    :cond_e
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/nuance/swype/connect/ConnectManager;->processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;I)V

    goto/16 :goto_0
.end method

.method public registerResponseListener(Lcom/nuance/swype/connect/ConnectClient$ResponseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager;->responseListener:Lcom/nuance/swype/connect/ConnectClient$ResponseListener;

    .line 1464
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 316
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->quit:Z

    if-nez v0, :cond_1

    .line 317
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/ConnectManager;->processNextCommand(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;)V

    .line 321
    :cond_0
    :try_start_0
    sget v0, Lcom/nuance/swype/connect/ConnectManager;->DELAY_BETWEEN_CONNECTIONS:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/ConnectManager;->cleanup()V

    .line 326
    return-void
.end method

.method public declared-synchronized sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :cond_1
    :try_start_1
    const-string v0, "ConnectMQTT"

    const-string v1, "duplicateCommand"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method public setDefaultDelay(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 1497
    iput p1, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelaySeconds:I

    .line 1498
    return-void
.end method

.method public setNetworkTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1585
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I

    .line 1586
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    iget-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->isRunning:Z

    if-eqz v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "URL"

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->serverUrlChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 289
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "DEFAULT_DELAY"

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->defaultDelayChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 292
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "MQTT_ENABLED"

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->mqttEnabledChangeListner:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 295
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "PROPERTY_HTTP_ANALYTICS_TIME"

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectManager;->networkUsageLengthListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 300
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 301
    .local v0, uid:I
    invoke-static {v0}, Lcom/nuance/swype/connect/compat/TrafficStatsCompat;->getUidRxBytes(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/ConnectManager;->lastRxBytes:J

    .line 302
    invoke-static {v0}, Lcom/nuance/swype/connect/compat/TrafficStatsCompat;->getUidTxBytes(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/ConnectManager;->lastTxBytes:J

    .line 304
    iput-boolean v4, p0, Lcom/nuance/swype/connect/ConnectManager;->isRunning:Z

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/connect/ConnectManager;->quit:Z

    .line 306
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/ConnectManager;->setPriority(I)V

    .line 307
    new-instance v1, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;-><init>(Lcom/nuance/swype/connect/ConnectManager;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    .line 309
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectManager;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 310
    invoke-direct {p0}, Lcom/nuance/swype/connect/ConnectManager;->managerStartComplete()V

    .line 311
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
