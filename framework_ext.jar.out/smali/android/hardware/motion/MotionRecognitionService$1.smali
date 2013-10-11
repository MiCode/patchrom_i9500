.class Landroid/hardware/motion/MotionRecognitionService$1;
.super Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;
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
    .line 207
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 210
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v3}, Landroid/hardware/motion/MotionRecognitionService;->getUsedSensorForEvents()I

    move-result v2

    .line 211
    .local v2, motion_sensors:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 212
    shl-int v1, v6, v0

    .line 213
    .local v1, motion_sensor:I
    and-int v3, v1, v2

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v3, v1, v6}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 215
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v3, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v5, 0x1

    #calls: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v3, v1, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$100(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 219
    :cond_0
    monitor-exit v4

    .line 211
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 221
    :cond_1
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v3, v1, v7}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 222
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v3, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :try_start_1
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v5, 0x0

    #calls: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v3, v1, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$100(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 226
    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 230
    .end local v1           #motion_sensor:I
    :cond_3
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v3, :cond_4

    .line 231
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 233
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3, v6}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 234
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 235
    const-string v3, "MotionRecognitionService"

    const-string v4, "SERVICETYPE_MOTION start"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_4
    :goto_2
    return-void

    .line 237
    :cond_5
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 239
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3, v7}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 240
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v3}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 241
    const-string v3, "MotionRecognitionService"

    const-string v4, "SERVICETYPE_MOTION stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
