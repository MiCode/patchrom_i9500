.class final Landroid/hardware/motion/MotionRecognitionService$Listener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mMotionEvents:I

.field final mMotionSensors:I

.field final mToken:Landroid/os/IBinder;

.field mUseAlways:Z

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;II)V
    .locals 1
    .parameter
    .parameter "token"
    .parameter "motion_sensors"
    .parameter "motion_events"

    .prologue
    .line 1869
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1870
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    .line 1871
    iput p3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    .line 1872
    iput p4, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    .line 1874
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 11

    .prologue
    const/high16 v10, 0x8

    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 1876
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1878
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_3

    .line 1879
    shl-int v1, v8, v0

    .line 1880
    .local v1, motion_event:I
    :try_start_0
    iget v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1881
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .binderDied event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v5, v3, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v0

    .line 1883
    if-ne v1, v10, :cond_0

    .line 1884
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$210(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 1885
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1886
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1887
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v5, 0x0

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z
    invoke-static {v3, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 1888
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v3}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 1889
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v5, 0x0

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I
    invoke-static {v3, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$1702(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 1890
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 1891
    .local v2, val:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 1892
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6, v2}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1893
    const-string v3, "MotionRecognitionService"

    const-string v5, "SERVICETYPE_MOTION stop"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    .end local v2           #val:[I
    :cond_0
    if-eq v1, v10, :cond_1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    if-ne v1, v9, :cond_2

    .line 1901
    :cond_1
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$2010(Landroid/hardware/motion/MotionRecognitionService;)I

    .line 1902
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$2000(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1903
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1878
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1908
    .end local v1           #motion_event:I
    :cond_3
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1909
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .binderDied : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v6, v6, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1911
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v3, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 1913
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #calls: Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$2100(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 1914
    monitor-exit v4

    .line 1915
    return-void

    .line 1914
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callback(Landroid/hardware/motion/MREvent;)V
    .locals 9
    .parameter "motionEvent"

    .prologue
    .line 1918
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v4

    .line 1920
    .local v4, motion:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1953
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-eqz v6, :cond_5

    .line 1955
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v6}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1957
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$2200(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0x66

    if-ne v6, v7, :cond_4

    .line 1958
    :cond_1
    const-string v6, "MotionRecognitionService"

    const-string v7, "check current task for multi-window"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    const/4 v5, 0x0

    .line 1961
    .local v5, packageName:Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$2300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1962
    .local v3, mActivtyMngr:Landroid/app/ActivityManager;
    if-eqz v3, :cond_2

    .line 1963
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 1968
    .end local v3           #mActivtyMngr:Landroid/app/ActivityManager;
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1969
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1995
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 1925
    :sswitch_0
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    goto :goto_2

    .line 1931
    :sswitch_1
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    goto :goto_2

    .line 1948
    :sswitch_2
    const-string v6, "MotionRecognitionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " send "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ~~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1974
    .restart local v0       #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_4
    :try_start_3
    invoke-interface {v0, p1}, Landroid/hardware/motion/IMotionRecognitionCallback;->motionCallback(Landroid/hardware/motion/MREvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1976
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :catch_0
    move-exception v1

    .line 1977
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MotionRecognitionService"

    const-string v7, "Failed motionCallback"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1980
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 1981
    const-string v6, "MotionRecognitionService"

    const-string v7, "Pause Youtube!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v6}, Landroid/hardware/motion/MotionRecognitionService;->sendMediaPlayButton()V

    .line 1983
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/4 v6, 0x5

    if-ge v2, v6, :cond_6

    .line 1985
    const-wide/16 v6, 0x64

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1988
    :goto_4
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService$Listener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPaused:I
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 1991
    :cond_6
    const-string v6, "MotionRecognitionService"

    const-string v7, "End of Pause Youtube!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1983
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1986
    :catch_1
    move-exception v6

    goto :goto_4

    .line 1965
    .end local v2           #i:I
    .restart local v0       #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    .restart local v5       #packageName:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_1

    .line 1920
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x3d -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x47 -> :sswitch_2
        0x48 -> :sswitch_1
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4b -> :sswitch_2
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x56 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method
