.class public Lcom/sec/android/app/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCameraId:I

.field private mDualBackCameraId:I

.field private mDualFrontCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    .line 52
    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    .line 53
    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    .line 54
    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    new-instance v2, Lcom/sec/android/app/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/CameraHolder$MyHandler;-><init>(Lcom/sec/android/app/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    .line 100
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    new-instance v3, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v3}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 104
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    .line 107
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 108
    iput v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    .line 114
    const/16 v2, 0xc

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/CameraHolder;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/app/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/app/camera/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/CameraHolder;->sHolder:Lcom/sec/android/app/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 196
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 197
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    .local v0, now:J
    iget-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_2
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_0
    move v4, v3

    .line 196
    goto :goto_0

    :cond_1
    move v2, v3

    .line 197
    goto :goto_1

    .line 204
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    const-string v2, "CameraHolder"

    const-string v3, "mCameraDevice.release();"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 209
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 210
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 196
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mBackCameraId:I

    aget-object v0, v0, v1

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 127
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v0, v0, p1

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualBackCameraId()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualBackCameraId:I

    return v0
.end method

.method public getDualFrontCameraId()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mDualFrontCameraId:I

    return v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 217
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 5
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 133
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    if-eq v2, p1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 137
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 141
    :try_start_1
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 143
    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 165
    :goto_2
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mKeepBeforeTime:J

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 133
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/RuntimeException;
    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 149
    iput p1, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 150
    :catch_1
    move-exception v1

    .line 151
    .local v1, ex:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 157
    :cond_2
    :try_start_5
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->reconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 159
    :catch_2
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v2, "CameraHolder"

    const-string v3, "reconnect failed."

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v2, Lcom/sec/android/app/camera/CameraHardwareException;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 189
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraHolder;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 192
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 177
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraHolder;->open(I)Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sec/android/app/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :cond_0
    monitor-exit p0

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Lcom/sec/android/app/camera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v0           #e:Lcom/sec/android/app/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
