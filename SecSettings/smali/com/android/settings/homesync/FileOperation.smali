.class public abstract Lcom/android/settings_ex/homesync/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeSyncFileOperation"


# instance fields
.field public bIsCopyMove:Z

.field public bIsoperationCancelled:Z

.field private futureTaskHandler:Landroid/os/Handler;

.field private futureTaskRunnable:Ljava/lang/Runnable;

.field public mAbsolutePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mErrMaxFilePath:Z

.field private mNotiBuilder:Landroid/app/Notification$Builder;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPercentagePerFile:I

.field private mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

.field private mRequestType:I

.field public operationException:Ljava/lang/Exception;

.field private operationRunnable:Ljava/lang/Runnable;

.field private operationThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;I)V
    .locals 2
    .parameter "context"
    .parameter "progressScreen"
    .parameter "requestType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    iput v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mRequestType:I

    .line 74
    iput-object p2, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    .line 76
    iput p3, p0, Lcom/android/settings_ex/homesync/FileOperation;->mRequestType:I

    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/homesync/FileOperation;->initNotification()V

    .line 80
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsCopyMove:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mErrMaxFilePath:Z

    .line 83
    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/settings_ex/homesync/FileOperation$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/FileOperation$1;-><init>(Lcom/android/settings_ex/homesync/FileOperation;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->operationRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->operationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->operationThread:Ljava/lang/Thread;

    .line 131
    new-instance v0, Lcom/android/settings_ex/homesync/FileOperation$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/FileOperation$2;-><init>(Lcom/android/settings_ex/homesync/FileOperation;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/homesync/FileOperation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/homesync/FileOperation;->releasePowerWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/homesync/FileOperation;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/homesync/FileOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/homesync/FileOperation;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/homesync/FileOperation;IIJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/android/settings_ex/homesync/FileOperation;->updateNotification(IIJJ)V

    return-void
.end method

.method private initNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v0, ""

    .line 234
    .local v0, notiTitle:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mRequestType:I

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0912bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    .line 246
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mNotiManager:Landroid/app/NotificationManager;

    .line 248
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0912c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "message"
    .parameter "fileName"
    .parameter "totalNumber"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method private declared-synchronized releasePowerWakeLock()V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "FileOperation.releasePowerWakeLock - SCREEN_DIM_WAKE_LOCK is Off."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPowerWakeLock()V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 217
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MyFiles-FileOperation"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 222
    :cond_0
    const-string v1, "HomeSyncFileOperation"

    const-string v2, "FileOperation.setPowerWakeLock - SCREEN_DIM_WAKE_LOCK is On."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 215
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateNotification(IIJJ)V
    .locals 3
    .parameter "max"
    .parameter "progress"
    .parameter "currentSize"
    .parameter "totalSize"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, p6}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v1, 0x457

    iget-object v2, p0, Lcom/android/settings_ex/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 255
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->bIsoperationCancelled:Z

    .line 196
    return-void
.end method

.method public destroyNotification()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "destroyNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 260
    return-void
.end method

.method protected abstract doFileOperation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract done(Ljava/lang/Exception;)V
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "Fileoperation : progressDialog - show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->operationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V
    .locals 14
    .parameter "t"
    .parameter "message"
    .parameter "fileName"
    .parameter "totalNumber"
    .parameter "perFilePercentage"
    .parameter "totalPercentage"
    .parameter "currentSize"
    .parameter "totalSize"
    .parameter "notification"

    .prologue
    .line 179
    iget-object v13, p0, Lcom/android/settings_ex/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings_ex/homesync/FileOperation$3;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p11

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/settings_ex/homesync/FileOperation$3;-><init>(Lcom/android/settings_ex/homesync/FileOperation;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJJ)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method protected setProgress(II)V
    .locals 4
    .parameter "perFileProgress"
    .parameter "totalProgress"

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->perFileProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->perFileProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->perFilePercentageView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation;->mProgressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperationProgress;->totalPercentageView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method
