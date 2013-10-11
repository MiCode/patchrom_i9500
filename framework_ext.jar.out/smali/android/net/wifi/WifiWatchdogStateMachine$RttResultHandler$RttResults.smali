.class Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttResults"
.end annotation


# instance fields
.field private mDataRate1:I

.field private mDataRate2:I

.field private mRSSI1:I

.field private mRSSI2:I

.field private mRtt:I

.field private mTime:J

.field final synthetic this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)V
    .locals 2

    .prologue
    .line 1177
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mTime:J

    .line 1179
    return-void
.end method

.method private displayNotification()V
    .locals 6

    .prologue
    .line 1252
    const-string v2, "%dms, %ddBm, %ddBm, %dMbps, %dMbps"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, resultStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RttResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1258
    .local v0, notification:Landroid/app/Notification;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "RTT"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1259
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 1260
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 1262
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1263
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    iget-object v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5402(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1265
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1266
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1182
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mTime:J

    .line 1183
    return-void
.end method

.method public setDataRate1(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1211
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    .line 1212
    return-void
.end method

.method public setDataRate2(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1215
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    .line 1216
    return-void
.end method

.method public setRSSI1(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1203
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    .line 1204
    return-void
.end method

.method public setRSSI2(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1207
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    .line 1208
    return-void
.end method

.method public setRtt(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1199
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    .line 1200
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "val"

    .prologue
    .line 1195
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mTime:J

    .line 1196
    return-void
.end method

.method public setValues(JIIIII)V
    .locals 0
    .parameter "r1"
    .parameter "r2"
    .parameter "r3"
    .parameter "r4"
    .parameter "r5"
    .parameter "r6"

    .prologue
    .line 1186
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mTime:J

    .line 1187
    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    .line 1188
    iput p4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    .line 1189
    iput p5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    .line 1190
    iput p6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    .line 1191
    iput p7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    .line 1192
    return-void
.end method

.method public writeResults()V
    .locals 11

    .prologue
    .line 1219
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    if-nez v6, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const-string v6, "wlan.rtt.path"

    const-string v7, "stop"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, logName:Ljava/lang/String;
    const-string v6, "stop"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1223
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "It\'s not in logging state!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/log/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, logFile:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Log file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_3
    const/4 v4, 0x0

    .line 1231
    .local v4, resultWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .end local v4           #resultWriter:Ljava/io/FileWriter;
    .local v5, resultWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mTime:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRtt:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mRSSI2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->mDataRate2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1239
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->displayNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1244
    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_1
    move-object v4, v5

    .line 1248
    .end local v5           #resultWriter:Ljava/io/FileWriter;
    .restart local v4       #resultWriter:Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, e1:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t exist or there are something wrong on handling it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    :cond_5
    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1245
    :catch_1
    move-exception v1

    .line 1246
    .local v1, e2:Ljava/io/IOException;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1243
    .end local v0           #e1:Ljava/io/IOException;
    .end local v1           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1244
    :goto_3
    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1243
    :cond_6
    :goto_4
    throw v6

    .line 1245
    :catch_2
    move-exception v1

    .line 1246
    .restart local v1       #e2:Ljava/io/IOException;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1245
    .end local v1           #e2:Ljava/io/IOException;
    .end local v4           #resultWriter:Ljava/io/FileWriter;
    .restart local v5       #resultWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 1246
    .restart local v1       #e2:Ljava/io/IOException;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler$RttResults;->this$1:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->access$5200(Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1243
    .end local v1           #e2:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #resultWriter:Ljava/io/FileWriter;
    .restart local v4       #resultWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 1240
    .end local v4           #resultWriter:Ljava/io/FileWriter;
    .restart local v5       #resultWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #resultWriter:Ljava/io/FileWriter;
    .restart local v4       #resultWriter:Ljava/io/FileWriter;
    goto :goto_2
.end method
