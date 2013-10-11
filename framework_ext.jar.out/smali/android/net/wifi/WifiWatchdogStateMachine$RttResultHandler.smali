.class Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttResultHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isWaitingResult:Z

.field private mCurrentTime:J

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mId:I

.field private mRttResults:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

.field private mStartRSSI:I

.field private mStartRate:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V
    .locals 3
    .parameter
    .parameter "looper"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1269
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1270
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1160
    const-string v0, "WifiWatchdogStateMachine.RttResultHandler_"

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    .line 1162
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 1163
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->isWaitingResult:Z

    .line 1164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mCurrentTime:J

    .line 1165
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRSSI:I

    .line 1166
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRate:I

    .line 1272
    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mId:I

    .line 1273
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mId:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mRttResults:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

    .line 1274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    .line 1275
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create RttHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_1
    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1159
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1159
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 1280
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mId:I

    if-eqz v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    const/4 v3, 0x0

    .line 1282
    .local v3, rttResult:I
    const/4 v8, 0x0

    .line 1283
    .local v8, id:I
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1339
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    const-string v1, "Unknown command"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->isWaitingResult:Z

    if-eqz v0, :cond_3

    .line 1286
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    const-string v1, "redundant Rtt request detected!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1289
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mRttResults:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->clear()V

    .line 1290
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mCurrentTime:J

    .line 1292
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRSSI:I

    .line 1293
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRate:I

    .line 1295
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttSocketHandler;

    move-result-object v0

    const v1, 0x21025

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->isWaitingResult:Z

    goto :goto_0

    .line 1300
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1301
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    const-string v1, "RTT result was already reported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    :cond_4
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1305
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RTT_RESULT_RECEIVED] id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_6

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1309
    :goto_1
    :sswitch_2
    iput-boolean v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->isWaitingResult:Z

    .line 1310
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-nez v0, :cond_7

    .line 1311
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    const-string v1, "RTT result was already reported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1306
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    goto :goto_1

    .line 1315
    :cond_7
    if-gtz v3, :cond_9

    .line 1316
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1317
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RTT_TEST_TIMEOUT] id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v0

    add-int/lit8 v1, v8, -0x1

    aget v3, v0, v1

    .line 1319
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1321
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1322
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :cond_9
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1329
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mRttResults:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mCurrentTime:J

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRSSI:I

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mStartRate:I

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->setValues(JIIIII)V

    .line 1333
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mRttResults:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->writeResults()V

    .line 1334
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->reportRttResult(II)V
    invoke-static {v0, v8, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    .line 1335
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static {v0, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4902(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_0

    .line 1323
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1283
    nop

    :sswitch_data_0
    .sparse-switch
        0x21020 -> :sswitch_0
        0x21024 -> :sswitch_2
        0x21026 -> :sswitch_1
    .end sparse-switch
.end method
