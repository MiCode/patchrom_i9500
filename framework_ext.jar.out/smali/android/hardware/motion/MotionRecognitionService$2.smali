.class Landroid/hardware/motion/MotionRecognitionService$2;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x10

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 252
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 253
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v12, v7, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 254
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 256
    const-string v7, "MotionRecognitionService"

    const-string v8, " Cancel reactive alert mode "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v7}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    .line 258
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 260
    :cond_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v7, :cond_1

    .line 261
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v7, v8, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v10, v7, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 264
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 265
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v7, :cond_1

    .line 266
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 268
    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v12, v7, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 270
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iput-boolean v12, v7, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    goto :goto_0

    .line 272
    :cond_4
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 275
    :cond_5
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    goto :goto_0

    .line 276
    :cond_6
    const-string v7, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 277
    const-string v7, "isEnable"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 278
    .local v3, isEnable:Z
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mReceiver.onReceive : ACTION_MOTIONS_SETTINGS_CHANGED - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz v3, :cond_7

    .line 280
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 283
    .end local v3           #isEnable:Z
    :cond_8
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 284
    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive : ACTION_USER_PRESENT  :: UNLOCK SCREEN"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    :cond_9
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 287
    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive :VOLUME_CHANGED "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-array v1, v12, [I

    .local v1, data:[I
    aput v12, v1, v10

    .line 289
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v8, 0xe

    invoke-virtual {v7, v8, v12, v1}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto/16 :goto_0

    .line 291
    .end local v1           #data:[I
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.GRIPSENSOR_CP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 292
    const-string v7, "cmd"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, callAction:Ljava/lang/String;
    const-string v7, "MotionRecognitionService"

    const-string v8, "  mReceiver.onReceive :CALL_ACTION_CHANGED "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    if-nez v7, :cond_b

    .line 296
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->access$802(Landroid/hardware/motion/MotionRecognitionService;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;

    .line 298
    :cond_b
    const-string v7, "on"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 300
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 302
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->sensorGripListener:Landroid/hardware/SensorEventListener;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/SensorEventListener;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v9, v9, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v10, v10, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    mul-int/lit16 v10, v10, 0x3e8

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v11, v11, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 303
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$902(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 308
    :cond_c
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-ne v7, v12, :cond_1

    .line 310
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->sensorGripListener:Landroid/hardware/SensorEventListener;
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/SensorEventListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 313
    :try_start_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 317
    :goto_1
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$902(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 320
    .end local v0           #callAction:Ljava/lang/String;
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.ACTIVITY_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 321
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedPackages:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v7

    const-string v8, "activityPackageName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 322
    .local v4, isSupportedPackage:Z
    const-string v7, "activityState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, state:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 327
    const-string v7, "pause"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 328
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1210(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 329
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 330
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSupportedAppCount in pause : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-gtz v7, :cond_1

    .line 332
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1202(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 334
    :try_start_1
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V

    .line 335
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v8, 0x0

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z
    invoke-static {v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1402(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 339
    :cond_e
    const-string v7, "resume"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "create"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    :cond_f
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1208(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 341
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 342
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSupportedAppCount in resume,create : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 345
    :try_start_2
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/motion/MotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V

    .line 346
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v8, 0x1

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z
    invoke-static {v7, v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1402(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 347
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 352
    .end local v4           #isSupportedPackage:Z
    .end local v5           #state:Ljava/lang/String;
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SMART_PAUSE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-lez v7, :cond_14

    .line 353
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$1502(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 354
    const-string v7, "STATUS"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "started"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 355
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 365
    :goto_2
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Paused = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " valid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I
    invoke-static {v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_11
    const-string v7, "STATUS"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopped"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 357
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 358
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1502(Landroid/hardware/motion/MotionRecognitionService;I)I

    goto :goto_2

    .line 359
    :cond_12
    const-string v7, "STATUS"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "paused"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 360
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    goto :goto_2

    .line 362
    :cond_13
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v7, v9}, Landroid/hardware/motion/MotionRecognitionService;->access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 363
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1502(Landroid/hardware/motion/MotionRecognitionService;I)I

    goto :goto_2

    .line 366
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 367
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$1602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 368
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 369
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 370
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 371
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$1602(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 373
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 375
    .local v2, extra:I
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() getIntExtra "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v2, :cond_18

    .line 377
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$402(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 378
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-ne v7, v12, :cond_1

    .line 379
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 380
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v7}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 381
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1702(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 382
    new-array v6, v12, [I

    .line 383
    .local v6, val:[I
    aput v10, v6, v10

    .line 384
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v11, v12, v6}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 385
    const-string v7, "MotionRecognitionService"

    const-string v8, "SERVICETYPE_MOTION stop"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v6           #val:[I
    :cond_18
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v7, v10}, Landroid/hardware/motion/MotionRecognitionService;->access$402(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 389
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "smart_scroll"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 392
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v7, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 393
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v7, v7, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v7, v11}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 394
    const-string v7, "MotionRecognitionService"

    const-string v8, "SERVICETYPE_MOTION start"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    .end local v2           #extra:I
    .restart local v0       #callAction:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_1
.end method
