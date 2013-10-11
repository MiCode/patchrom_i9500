.class Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;
.super Ljava/lang/Thread;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdBridgeServer"
.end annotation


# static fields
.field public static final CONNECT_TYPE_CLIENT:I = 0x3

.field public static final CONNECT_TYPE_CONNECTING:I = 0x1

.field public static final CONNECT_TYPE_INITIALIZED:I = -0x1

.field public static final CONNECT_TYPE_NOT_CONNECTED:I = 0x0

.field public static final CONNECT_TYPE_SERVER:I = 0x2

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field private static final WfdBridgetPort:I = 0x26b5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBridgeConnType:I

.field public mBusyFlag:I

.field private mContext:Landroid/content/Context;

.field private mInetAddress:Ljava/net/InetAddress;

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mServerSocket:Ljava/net/ServerSocket;

.field public mSinkState:I

.field private mSocket:Ljava/net/Socket;

.field public mSourceState:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/content/Context;Ljava/net/InetAddress;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "inet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1091
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->TAG:Ljava/lang/String;

    .line 1092
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mContext:Landroid/content/Context;

    .line 1094
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 1095
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    .line 1097
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    .line 1099
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    .line 1100
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    .line 1108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    .line 1114
    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    .line 1115
    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    .line 1117
    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    .line 1122
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mContext:Landroid/content/Context;

    .line 1123
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    .line 1124
    const-string v0, "WfdBridgeServer"

    const-string v1, "WfdBridgeServer is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method private RecvCommand()Z
    .locals 8

    .prologue
    .line 1284
    const-string v5, "WfdBridgeServer"

    const-string v6, "Run ComRcvLoop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v3, 0x0

    .line 1287
    .local v3, len:I
    const/16 v5, 0x100

    new-array v0, v5, [B

    .line 1289
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1292
    .local v4, mParcel:Landroid/os/Parcel;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1293
    const-string v5, "WfdBridgeServer"

    const-string v6, "Just got CMD from client"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1295
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1297
    const-class v5, Lcom/android/server/display/CmdInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/CmdInfo;

    .line 1298
    .local v1, ci:Lcom/android/server/display/CmdInfo;
    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CmdType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    sget-object v5, Lcom/android/server/display/WifiDisplayAdapter$13;->$SwitchMap$com$android$server$display$CmdInfo$CmdType:[I

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1312
    const-string v5, "WfdBridgeServer"

    const-string v6, "Wrong Cmd Type is accepted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1302
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->launchWfdPlayer(I)V
    invoke-static {v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1319
    .end local v1           #ci:Lcom/android/server/display/CmdInfo;
    :catch_0
    move-exception v2

    .line 1320
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1321
    const-string v5, "WfdBridgeServer"

    const-string v6, "Catch exception parcel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1323
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 1305
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ci:Lcom/android/server/display/CmdInfo;
    :pswitch_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(I)V
    invoke-static {v5, v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$2400(Lcom/android/server/display/WifiDisplayAdapter;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1323
    .end local v1           #ci:Lcom/android/server/display/CmdInfo;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 1308
    .restart local v1       #ci:Lcom/android/server/display/CmdInfo;
    :pswitch_2
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    .line 1309
    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBusyFlag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1316
    .end local v1           #ci:Lcom/android/server/display/CmdInfo;
    :cond_0
    const-string v5, "WfdBridgeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input Stream is < 0  len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1323
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1327
    .end local v4           #mParcel:Landroid/os/Parcel;
    :cond_1
    const-string v5, "WfdBridgeServer"

    const-string v6, "ComRcvLoop End"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v5, 0x1

    return v5

    .line 1300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmdLaunchWfdPlayer(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmdStartWfdSource(I)V

    return-void
.end method

.method private sendCmd(Lcom/android/server/display/CmdInfo;)V
    .locals 4
    .parameter "ci"

    .prologue
    .line 1333
    :try_start_0
    const-string v2, "WfdBridgeServer"

    const-string v3, "-> sendCmd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1335
    .local v1, mParcel:Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1336
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1337
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1339
    const-string v2, "WfdBridgeServer"

    const-string v3, "<-send finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    .end local v1           #mParcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private sendCmdLaunchWfdPlayer(I)V
    .locals 4
    .parameter "deviceType"

    .prologue
    .line 1346
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCmdLaunchWfdPlayer /w deviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-direct {v0, v1, p1}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    .line 1348
    .local v0, ci:Lcom/android/server/display/CmdInfo;
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    .line 1349
    return-void
.end method

.method private sendCmdStartWfdSource(I)V
    .locals 4
    .parameter "deviceType"

    .prologue
    .line 1352
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCmdStartWfdSource /w deviceType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-direct {v0, v1, p1}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    .line 1354
    .local v0, ci:Lcom/android/server/display/CmdInfo;
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    .line 1355
    return-void
.end method


# virtual methods
.method public closeBridge()V
    .locals 3

    .prologue
    .line 1181
    const-string v1, "WfdBridgeServer"

    const-string v2, "closeBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1186
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    .line 1187
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 1190
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 1191
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public connectBridge()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1128
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    .line 1130
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    .line 1133
    :try_start_0
    const-string v1, "WfdBridgeServer"

    const-string v2, "try to create SocketServer..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v1, Ljava/net/ServerSocket;

    const/16 v2, 0x26b5

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :try_start_1
    const-string v1, "WfdBridgeServer"

    const-string v2, "wait for a client..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 1145
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    .line 1147
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect to client Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1178
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: SocketServer create failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 1138
    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_0

    .line 1151
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :try_start_2
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect Fail with client"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1155
    :catch_1
    move-exception v0

    .line 1156
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: Connect Fail with client"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_0

    .line 1161
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to connect server : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    .line 1163
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26b5

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1165
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1166
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect to server Success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1173
    :catch_2
    move-exception v0

    .line 1174
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WfdBridgeServer"

    const-string v2, "Catch Exception: Connect Fail to server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iput v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    goto :goto_0

    .line 1169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v1, "WfdBridgeServer"

    const-string v2, "Connect Fail to server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method public getBridgeConnType()I
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    return v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1198
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_1

    .line 1199
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnected? mBridgeConnType ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mSocket connected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1203
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1200
    goto :goto_0

    .line 1202
    :cond_1
    const-string v0, "WfdBridgeServer"

    const-string v2, "isConnected? return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1203
    goto :goto_0
.end method

.method public isPartnerBusy()I
    .locals 3

    .prologue
    .line 1218
    const-string v0, "WfdBridgeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other side is busy ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBusyFlag:I

    return v0
.end method

.method public isWfdEngineRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1241
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    if-ne v1, v0, :cond_1

    .line 1242
    :cond_0
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFD engine state(source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_0
    return v0

    .line 1245
    :cond_1
    const-string v0, "WfdBridgeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFD engine state(source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1251
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->connectBridge()V

    .line 1254
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mBridgeConnType:I

    if-eqz v2, :cond_1

    .line 1260
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1261
    const-string v2, "WfdBridgeServer"

    const-string v3, "Does not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    .line 1281
    :goto_1
    return-void

    .line 1257
    :cond_1
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry cont "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1267
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mInputStream:Ljava/io/InputStream;

    .line 1274
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->RecvCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    goto :goto_1

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1275
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1276
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->closeBridge()V

    throw v2
.end method

.method public setSinkState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1223
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSinkState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " etc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    .line 1227
    .local v0, ci:Lcom/android/server/display/CmdInfo;
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    .line 1229
    .end local v0           #ci:Lcom/android/server/display/CmdInfo;
    :cond_0
    return-void
.end method

.method public setSourceState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1232
    const-string v1, "WfdBridgeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSourceState ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " etc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    new-instance v0, Lcom/android/server/display/CmdInfo;

    sget-object v1, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->mSourceState:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    .line 1236
    .local v0, ci:Lcom/android/server/display/CmdInfo;
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeServer;->sendCmd(Lcom/android/server/display/CmdInfo;)V

    .line 1238
    .end local v0           #ci:Lcom/android/server/display/CmdInfo;
    :cond_0
    return-void
.end method
