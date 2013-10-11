.class Lcom/android/server/TvoutService$6;
.super Landroid/content/BroadcastReceiver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, action:Ljava/lang/String;
    const-string v9, "TvoutService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TvoutService Action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v9, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 423
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 426
    .local v5, bStatus:Z
    const-string v9, "TvoutService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TvoutService HDMI : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " status : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 431
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1000(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 433
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;Z)Z

    .line 434
    const-string v9, "TvoutService_Java"

    const-string v10, "HDMI is connected, send intent to terminate screen recorder"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREENRECORDER_HDMI"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, SRActionIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 439
    .local v7, msg:Landroid/os/Message;
    const-string v9, "HDMI connected. ScreenRecorder is  turned off"

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    .end local v0           #SRActionIntent:Landroid/content/Intent;
    .end local v7           #msg:Landroid/os/Message;
    :cond_0
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 444
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 445
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 447
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutTeminateWFD()Z

    .line 448
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 449
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 450
    .restart local v7       #msg:Landroid/os/Message;
    const-string v9, "HDMI connected. AllShare Cast turned off"

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1200(Lcom/android/server/TvoutService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    .end local v5           #bStatus:Z
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v9, "persist.sys.camera.connect"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void

    .line 455
    .restart local v5       #bStatus:Z
    :cond_2
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9, v5}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 456
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9, v5}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 457
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v9, v5}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 458
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 459
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 460
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 461
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 463
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-string v10, "/sys/power/gpu_lock"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 465
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v9

    if-nez v9, :cond_1

    .line 467
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto :goto_0

    .line 504
    :cond_3
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutGetCableStatus()Z

    move-result v6

    .line 505
    .local v6, cable_status:Z
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9, v5}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 506
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9, v5}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 507
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v9, v5}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 508
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$602(Lcom/android/server/TvoutService;Z)Z

    .line 510
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-string v10, "/sys/power/gpu_lock"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/TvoutService;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    .line 512
    const-string v9, "persist.sys.camera.transform"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v9, "persist.sys.camera.connect"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 515
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 517
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 519
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 522
    :cond_4
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 523
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto/16 :goto_0

    .line 526
    .end local v5           #bStatus:Z
    .end local v6           #cable_status:Z
    :cond_5
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 529
    const-string v9, "TvoutService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Locale changed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    goto/16 :goto_0

    .line 533
    :cond_6
    const-string v9, "com.samsung.android.app.camera.RVF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 535
    const-string v9, "running"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 537
    .local v8, new_RVF_CONNECT:Z
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v9

    if-eq v8, v9, :cond_1

    .line 538
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 539
    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 540
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x3

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 543
    :cond_7
    :goto_1
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9, v8}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 541
    :cond_8
    if-nez v8, :cond_7

    .line 542
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_1

    .line 547
    .end local v8           #new_RVF_CONNECT:Z
    :cond_9
    const-string v9, "android.app.presentation.ACTION_START_PRESENTATION_STATE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 549
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-string v10, "isPresentationRunning"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #setter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$902(Lcom/android/server/TvoutService;I)I

    .line 550
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v9

    if-nez v9, :cond_1

    .line 552
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1500(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 554
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_a

    .line 556
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 558
    :cond_a
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v9

    if-eqz v9, :cond_d

    .line 559
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    add-int/lit16 v10, v10, 0xb4

    rem-int/lit16 v10, v10, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1602(Lcom/android/server/TvoutService;I)I

    .line 560
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 561
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    .line 562
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 565
    :cond_b
    :goto_2
    const-string v9, "persist.sys.camera.direction"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_3
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 572
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$1402(Lcom/android/server/TvoutService;J)J

    .line 573
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 574
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 563
    :cond_c
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    .line 564
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 569
    :cond_d
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_3

    .line 576
    :cond_e
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1700(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 578
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_f

    .line 580
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 582
    :cond_f
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_12

    .line 583
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    add-int/lit16 v10, v10, 0xb4

    rem-int/lit16 v10, v10, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1602(Lcom/android/server/TvoutService;I)I

    .line 584
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 585
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_11

    .line 586
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 589
    :cond_10
    :goto_4
    const-string v9, "persist.sys.camera.direction"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :goto_5
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 596
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 597
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 598
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$1402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 587
    :cond_11
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-nez v9, :cond_10

    .line 588
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_4

    .line 593
    :cond_12
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_5

    .line 602
    :cond_13
    const-string v9, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1a

    .line 604
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1502(Lcom/android/server/TvoutService;Z)Z

    .line 605
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 607
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_14

    .line 609
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 611
    :cond_14
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v9

    if-eqz v9, :cond_19

    .line 612
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    add-int/lit16 v10, v10, 0xb4

    rem-int/lit16 v10, v10, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1602(Lcom/android/server/TvoutService;I)I

    .line 613
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_15

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v9

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_16

    .line 614
    :cond_15
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 615
    :cond_16
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_18

    .line 616
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 619
    :cond_17
    :goto_6
    const-string v9, "persist.sys.camera.direction"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_7
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 626
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$1402(Lcom/android/server/TvoutService;J)J

    .line 627
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 628
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 617
    :cond_18
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-nez v9, :cond_17

    .line 618
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_6

    .line 623
    :cond_19
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_7

    .line 632
    :cond_1a
    const-string v9, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_21

    .line 634
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1702(Lcom/android/server/TvoutService;Z)Z

    .line 635
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 637
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_1b

    .line 639
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    .line 641
    :cond_1b
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_20

    .line 642
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    add-int/lit16 v10, v10, 0xb4

    rem-int/lit16 v10, v10, 0x168

    #setter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1602(Lcom/android/server/TvoutService;I)I

    .line 643
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_1c

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v9

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_1d

    .line 644
    :cond_1c
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->setOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$1600(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    .line 645
    :cond_1d
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1f

    .line 646
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x2

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 649
    :cond_1e
    :goto_8
    const-string v9, "persist.sys.camera.direction"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_9
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 656
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$202(Lcom/android/server/TvoutService;I)I

    .line 657
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 658
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$1402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 647
    :cond_1f
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    cmp-long v9, v9, v11

    if-nez v9, :cond_1e

    .line 648
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_8

    .line 653
    :cond_20
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto :goto_9

    .line 661
    :cond_21
    const-string v9, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 663
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1502(Lcom/android/server/TvoutService;Z)Z

    .line 664
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1702(Lcom/android/server/TvoutService;Z)Z

    .line 665
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_22

    .line 667
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    .line 668
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 669
    const-string v9, "persist.sys.camera.transform"

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v10}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$802(Lcom/android/server/TvoutService;Z)Z

    .line 672
    :cond_22
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$900(Lcom/android/server/TvoutService;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 674
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_23

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_23

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v9

    if-nez v9, :cond_23

    .line 676
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    .line 679
    :cond_23
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$502(Lcom/android/server/TvoutService;Z)Z

    .line 680
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 681
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetVideoRotation(I)Z

    .line 682
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9, v10, v11}, Lcom/android/server/TvoutService;->access$1402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_0

    .line 685
    :cond_24
    const-string v9, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->RVF_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$800(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_26

    .line 687
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 689
    .local v3, bAllShareCastConnectedFlag:I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_25

    .line 690
    const-string v9, "TvoutService_Java"

    const-string v10, "AllShare Cast Connected !!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 692
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 693
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 696
    :cond_25
    const-string v9, "TvoutService_Java"

    const-string v10, "AllShare Cast NOT Connected !!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/TvoutService;->TvoutSetWFDStatus(Z)Z

    .line 698
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$702(Lcom/android/server/TvoutService;Z)Z

    .line 699
    const-string v9, "persist.sys.camera.transform"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v9, "persist.sys.camera.connect"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 705
    .end local v3           #bAllShareCastConnectedFlag:I
    :cond_26
    const-string v9, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 707
    const-string v9, "TvoutService_Java"

    const-string v10, "Screen recorder intent is received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, SRState:Ljava/lang/String;
    const-string v9, "IsRunning"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    const-string v9, "TvoutService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ScreenRecorder State is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v9, "run"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 713
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 714
    :cond_27
    const-string v9, "stop"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 715
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1002(Lcom/android/server/TvoutService;Z)Z

    goto/16 :goto_0

    .line 719
    .end local v1           #SRState:Ljava/lang/String;
    :cond_28
    const-string v9, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 721
    const-string v9, "android.intent.extra.device_state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 722
    .local v4, bMouseDockedFlag:I
    const-string v9, "TvoutService_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v9, 0x1

    if-ne v9, v4, :cond_29

    .line 725
    const-string v9, "TvoutService_Java"

    const-string v10, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;Z)Z

    .line 728
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1300(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sCameraConnect:J
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$1400(Lcom/android/server/TvoutService;)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 730
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutCreateSmartDockSurface()Z

    goto/16 :goto_0

    .line 733
    :cond_29
    if-nez v4, :cond_1

    .line 734
    const-string v9, "TvoutService_Java"

    const-string v10, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$1302(Lcom/android/server/TvoutService;Z)Z

    .line 737
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v10}, Lcom/android/server/TvoutService;->TvoutGetSmartDockSurfaceStatus()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 739
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v9}, Lcom/android/server/TvoutService;->TvoutDestroySmartDockSurface()Z

    goto/16 :goto_0

    .line 743
    .end local v4           #bMouseDockedFlag:I
    :cond_2a
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 744
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x0

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0

    .line 746
    :cond_2b
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 747
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2c

    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v9}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 748
    :cond_2c
    iget-object v9, p0, Lcom/android/server/TvoutService$6;->this$0:Lcom/android/server/TvoutService;

    const/4 v10, 0x1

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v9, v10}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    goto/16 :goto_0
.end method
