.class Lcom/android/server/WifiService$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2474
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2427
    const/4 v0, 0x2

    .line 2436
    .local v0, wifiSleepPolicy:I
    iget-object v2, p0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2441
    if-ne v0, v4, :cond_1

    .line 2450
    :cond_0
    :goto_0
    return v1

    .line 2444
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 2450
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$11;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2301
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2303
    .local v3, action:Ljava/lang/String;
    const-wide/32 v8, 0xdbba0

    .line 2309
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wifi_idle_ms"

    const-wide/32 v18, 0xdbba0

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "stay_on_while_plugged_in"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 2316
    .local v13, stayAwakeConditions:I
    const-string v16, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2317
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2318
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_ON"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3302(Lcom/android/server/WifiService;Z)Z

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2326
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 2327
    .local v10, msg:Landroid/os/Message;
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v10, Landroid/os/Message;->what:I

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;Z)V

    .line 2416
    .end local v10           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 2332
    :cond_2
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2333
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2334
    const-string v16, "WifiService"

    const-string v17, "ACTION_SCREEN_OFF"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3302(Lcom/android/server/WifiService;Z)Z

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/server/WifiService$11;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 2349
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v18, v18, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2353
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 2356
    :cond_6
    const-string v16, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 2365
    :cond_7
    const-string v16, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2373
    const-string v16, "plugged"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2374
    .local v11, pluggedType:I
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2375
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3500(Lcom/android/server/WifiService;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/server/WifiService$11;->shouldWifiStayAwake(II)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/android/server/WifiService$11;->shouldWifiStayAwake(II)Z

    move-result v16

    if-nez v16, :cond_a

    .line 2379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v14, v16, v8

    .line 2380
    .local v14, triggerTime:J
    invoke-static {}, Lcom/android/server/WifiService;->access$100()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2381
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2386
    .end local v14           #triggerTime:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v11}, Lcom/android/server/WifiService;->access$3502(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2387
    .end local v11           #pluggedType:I
    :cond_b
    const-string v16, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 2388
    const-string v16, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2390
    .local v12, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 2391
    .end local v12           #state:I
    :cond_c
    const-string v16, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    const-string v17, "phoneinECMState"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static/range {v16 .. v17}, Lcom/android/server/WifiService;->access$3602(Lcom/android/server/WifiService;Z)Z

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2394
    :cond_d
    const-string v16, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2397
    const-string v16, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2398
    .local v7, iccState:Ljava/lang/String;
    const-string v16, "WifiService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sim state changed : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 2400
    .local v5, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_1

    .line 2401
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_e
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2402
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    const-string v16, "AKA"

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2403
    const-string v16, "ABSENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_f

    const-string v16, "LOCKED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 2405
    :cond_f
    const-string v16, "WifiService"

    const-string v17, "disconnect aka ap."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/WifiService;->disableNetwork(I)Z

    goto :goto_1

    .line 2408
    :cond_10
    const-string v16, "WifiService"

    const-string v17, "enableNetwork"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$11;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v16, v0

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/WifiService;->enableNetwork(IZ)Z

    goto :goto_1
.end method
