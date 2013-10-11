.class Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttSocketHandler"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 1028
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1029
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1026
    const-string v0, "WifiWatchdogStateMachine.RttSocketHandler"

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    .line 1030
    return-void
.end method

.method private sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 10
    .parameter "socket"
    .parameter "srcUrl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1127
    .local v0, addr:Ljava/net/InetAddress;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addr : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    const/16 v4, 0x50

    .line 1130
    .local v4, port:I
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 1131
    :cond_1
    const-string v7, "http"

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1132
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    const-string v8, "No http request!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_2
    const-string v1, "/"

    .line 1134
    .local v1, file:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 1136
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    .line 1138
    .local v2, ipaddr:Ljava/net/InetAddress;
    if-nez p1, :cond_5

    .line 1139
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    const-string v8, "socket closed before connect"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_4
    new-instance v7, Ljava/net/SocketException;

    invoke-direct {v7}, Ljava/net/SocketException;-><init>()V

    throw v7

    .line 1143
    :cond_5
    new-instance v7, Ljava/net/InetSocketAddress;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v7}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 1144
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v7, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1146
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 1147
    .local v5, theOutput:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1148
    .local v3, out:Ljava/io/OutputStreamWriter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOST: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1150
    const-string v7, "Connection: close\r\n"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1153
    const-string v7, "\r\n"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1155
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 1034
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1036
    :pswitch_0
    const/4 v15, 0x0

    .line 1037
    .local v15, needSkip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v10

    .line 1038
    .local v10, id:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[RTT_TEST_START] id : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    const/16 v19, 0x0

    .line 1042
    .local v19, rtt:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v10, v0, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->isClosed()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1043
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(mRttSocket != null) : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " mRttSocket.isClosed() : "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/Socket;->isClosed()Z

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1046
    :cond_3
    const/4 v15, 0x1

    .line 1092
    :cond_4
    if-eqz v15, :cond_23

    .line 1093
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "couldn\'t test rtt by problem on using socket!"

    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1044
    :cond_5
    const/16 v20, 0x0

    goto :goto_1

    .line 1048
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1049
    .local v14, message:Landroid/os/Message;
    const v20, 0x21024

    move/from16 v0, v20

    iput v0, v14, Landroid/os/Message;->what:I

    .line 1050
    iput v10, v14, Landroid/os/Message;->arg1:I

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v21

    add-int/lit8 v22, v10, -0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1052
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[URL] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlString:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_7
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttRepeat:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1055
    .local v16, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/net/Socket;

    invoke-direct/range {v21 .. v21}, Ljava/net/Socket;-><init>()V

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v22

    add-int/lit8 v23, v10, -0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V

    .line 1058
    const/16 v20, 0x2800

    move/from16 v0, v20

    new-array v6, v0, [B

    .line 1059
    .local v6, buffer:[B
    const/4 v12, 0x0

    .line 1060
    .local v12, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1061
    .local v11, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1062
    .local v5, br:Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 1063
    .local v13, line:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "response : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_8
    const-string v20, "301"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const-string v20, "302"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const-string v20, "303"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 1066
    :cond_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 1067
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "response : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_a
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1069
    .local v18, redirectURL:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "redirectURL : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/net/Socket;

    invoke-direct/range {v21 .. v21}, Ljava/net/Socket;-><init>()V

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v21

    add-int/lit8 v22, v10, -0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1077
    .end local v18           #redirectURL:Ljava/lang/String;
    :cond_c
    :goto_4
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, count:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_f

    .line 1078
    add-int/2addr v12, v7

    .line 1079
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "length : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1084
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v6           #buffer:[B
    .end local v7           #count:I
    .end local v9           #i:I
    .end local v11           #in:Ljava/io/InputStream;
    .end local v12           #length:I
    .end local v13           #line:Ljava/lang/String;
    .end local v14           #message:Landroid/os/Message;
    .end local v16           #now:J
    :catch_0
    move-exception v8

    .line 1085
    .local v8, ee:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception occured : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_d
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    :cond_e
    const/16 v19, -0x1

    .line 1092
    if-eqz v15, :cond_17

    .line 1093
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "couldn\'t test rtt by problem on using socket!"

    goto/16 :goto_2

    .line 1081
    .end local v8           #ee:Ljava/lang/Exception;
    .restart local v5       #br:Ljava/io/BufferedReader;
    .restart local v6       #buffer:[B
    .restart local v7       #count:I
    .restart local v9       #i:I
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v12       #length:I
    .restart local v13       #line:Ljava/lang/String;
    .restart local v14       #message:Landroid/os/Message;
    .restart local v16       #now:J
    :cond_f
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v20

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 1053
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1088
    .end local v5           #br:Ljava/io/BufferedReader;
    .end local v6           #buffer:[B
    .end local v7           #count:I
    .end local v9           #i:I
    .end local v11           #in:Ljava/io/InputStream;
    .end local v12           #length:I
    .end local v13           #line:Ljava/lang/String;
    .end local v14           #message:Landroid/os/Message;
    .end local v16           #now:J
    :catch_1
    move-exception v4

    .line 1089
    .local v4, ae:Ljava/lang/AssertionError;
    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AssertionError occured : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1090
    :cond_10
    const/16 v19, -0x1

    .line 1092
    if-eqz v15, :cond_1d

    .line 1093
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "couldn\'t test rtt by problem on using socket!"

    goto/16 :goto_2

    .line 1100
    .end local v4           #ae:Ljava/lang/AssertionError;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->isClosed()Z

    move-result v21

    if-nez v21, :cond_12

    .line 1102
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/Socket;->close()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v21 .. v22}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1107
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    move/from16 v0, v21

    if-ne v10, v0, :cond_16

    .line 1109
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "send rtt result...id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v21

    const v22, 0x21026

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v21

    const v22, 0x21024

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    throw v20

    :catchall_0
    move-exception v20

    if-eqz v15, :cond_15

    .line 1093
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "couldn\'t test rtt by problem on using socket!"

    goto/16 :goto_2

    .line 1095
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v21 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    if-nez v21, :cond_11

    .line 1096
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rtt id["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] was already timed out!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_7
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1112
    :cond_16
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "[id:%d, mOngoingRttId:%d] Skip sending result"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v25, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1095
    .restart local v8       #ee:Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_18

    .line 1096
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rtt id["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] was already timed out!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_7

    .line 1100
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->isClosed()Z

    move-result v20

    if-nez v20, :cond_19

    .line 1102
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1107
    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_1c

    .line 1109
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "send rtt result...id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    const v21, 0x21026

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    .end local v8           #ee:Ljava/lang/Exception;
    :goto_a
    const v21, 0x21024

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1112
    .restart local v8       #ee:Ljava/lang/Exception;
    :cond_1c
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[id:%d, mOngoingRttId:%d] Skip sending result"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v24, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1095
    .end local v8           #ee:Ljava/lang/Exception;
    .restart local v4       #ae:Ljava/lang/AssertionError;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_1e

    .line 1096
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rtt id["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] was already timed out!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_7

    .line 1100
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->isClosed()Z

    move-result v20

    if-nez v20, :cond_1f

    .line 1102
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1107
    :cond_1f
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_22

    .line 1109
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "send rtt result...id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    const v21, 0x21026

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_21
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    goto/16 :goto_a

    .line 1112
    :cond_22
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[id:%d, mOngoingRttId:%d] Skip sending result"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v24, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1095
    .end local v4           #ae:Ljava/lang/AssertionError;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_24

    .line 1096
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "rtt id["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] was already timed out!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_7

    .line 1100
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->isClosed()Z

    move-result v20

    if-nez v20, :cond_25

    .line 1102
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static/range {v20 .. v21}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1107
    :cond_25
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v20

    if-ne v10, v0, :cond_28

    .line 1109
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "send rtt result...id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    const v21, 0x21026

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v20

    goto/16 :goto_a

    .line 1112
    :cond_28
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v20

    if-eqz v20, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[id:%d, mOngoingRttId:%d] Skip sending result"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v24, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1104
    :catch_2
    move-exception v20

    goto/16 :goto_d

    .restart local v4       #ae:Ljava/lang/AssertionError;
    :catch_3
    move-exception v20

    goto/16 :goto_b

    .end local v4           #ae:Ljava/lang/AssertionError;
    .restart local v8       #ee:Ljava/lang/Exception;
    :catch_4
    move-exception v20

    goto/16 :goto_8

    .end local v8           #ee:Ljava/lang/Exception;
    :catch_5
    move-exception v21

    goto/16 :goto_5

    .line 1034
    :pswitch_data_0
    .packed-switch 0x21025
        :pswitch_0
    .end packed-switch
.end method
