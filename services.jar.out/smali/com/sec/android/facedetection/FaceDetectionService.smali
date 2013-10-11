.class public Lcom/sec/android/facedetection/FaceDetectionService;
.super Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
.source "FaceDetectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/FaceDetectionService$Size;,
        Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;,
        Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;,
        Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;
    }
.end annotation


# static fields
.field private static final DETECT_BLINK:Z = false

.field private static final FDS_DISABLE:Z = false

.field private static final MAX_RETRY:I = 0x2

.field private static final NO_TIMEOUT:Z = true

.field public static final START_CAMERA:I = 0x1

.field public static final START_FD_ONE_EYE:I = 0x3

.field public static final START_FD_TWO_EYE:I = 0x4

.field public static final STOP_CAMERA:I = 0x0

.field public static final STOP_FD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FaceDetectionService"

.field private static final URI_SMART_ROTATION:Ljava/lang/String; = "intelligent_rotation_mode"

.field private static final URI_SMART_STAY:Ljava/lang/String; = "intelligent_sleep_mode"


# instance fields
.field private bRotation:Z

.field private bStay:Z

.field final callback:Ljava/util/concurrent/locks/Condition;

.field final complete:Ljava/util/concurrent/locks/Condition;

.field completeDone:Z

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final lock2:Ljava/util/concurrent/locks/Lock;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceOrientation:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDegreeOffset:I

.field private mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

.field private mFaces:[Lcom/sec/android/facedetection/SecFace;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFailed:Z

.field private mLastDeviceOrientation:I

.field private mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

.field private mNumOfListener:I

.field private mRP:Landroid/app/enterprise/RestrictionPolicy;

.field private mSettingObserver:Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 501
    invoke-direct {p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;-><init>()V

    .line 119
    iput-boolean v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mIsFailed:Z

    .line 121
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 122
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    .line 123
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    .line 124
    iput-boolean v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->completeDone:Z

    .line 126
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    .line 502
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    .line 503
    iput-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 504
    iput v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 505
    iput-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 508
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 510
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 511
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    .line 514
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FaceDetection Handler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 515
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 517
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FaceDetection Callback Handler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    .line 518
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 520
    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    .line 522
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    .line 523
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/sec/android/facedetection/FaceDetectionService$1;

    invoke-direct {v3, p0}, Lcom/sec/android/facedetection/FaceDetectionService$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 529
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 530
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 531
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Fatal System Error!\nNow Dumping Log...\nDo not turn off!\nIt will take about 1 min."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 533
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 535
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "Error Dialog"

    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 537
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    .line 539
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 540
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "FaceDetectionService"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 542
    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mSettingObserver:Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

    .line 543
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mSettingObserver:Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_rotation_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mSettingObserver:Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 548
    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    .line 549
    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mSettingObserver:Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;

    invoke-virtual {v2, v6}, Lcom/sec/android/facedetection/FaceDetectionService$SettingObserver;->onChange(Z)V

    .line 551
    const-string v2, "FaceDetectionService"

    const-string v3, "FaceDetectionService Started."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->bStay:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/facedetection/FaceDetectionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->bStay:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/facedetection/FaceDetectionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->bRotation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/facedetection/FaceDetectionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->bRotation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/facedetection/FaceDetectionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->letGo()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    return p1
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 593
    return-void
.end method

.method private declared-synchronized decreaseListener()V
    .locals 2

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 617
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->closeCamera()V

    .line 620
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->onCameraStatusChanged(Z)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 624
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.release() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_0
    monitor-exit p0

    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "needOneEye"

    .prologue
    const/4 v0, -0x1

    .line 666
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;
    .locals 9
    .parameter "needOneEye"
    .parameter "last"
    .parameter "current"

    .prologue
    const/4 v8, 0x2

    .line 671
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mIsFailed:Z

    .line 673
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mIsFailed:Z

    .line 677
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    .line 703
    :cond_2
    :try_start_1
    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    .line 704
    iput p3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCurrentDeviceOrientation:I

    .line 706
    if-eqz p1, :cond_6

    .line 707
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 711
    :goto_1
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    const/4 v3, 0x0

    .line 716
    .local v3, ret:[Lcom/sec/android/facedetection/SecFace;
    :try_start_2
    const-string v4, "FaceDetectionService"

    const-string v5, "WAIT FOR CALLBACK"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 718
    const/4 v2, 0x2

    .line 719
    .local v2, iRetryCount:I
    const/4 v1, 0x0

    .line 721
    .local v1, iBlinkCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_4

    .line 724
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 725
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v5, 0x23c34600

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    const-string v4, "FaceDetectionService"

    const-string v5, "No Callback!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 747
    :cond_3
    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    if-lez v4, :cond_7

    .line 751
    :cond_4
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DONE! BlinkCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Retry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-ne v2, v8, :cond_9

    .line 755
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-nez v4, :cond_8

    .line 757
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 775
    :cond_5
    :goto_4
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 778
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 782
    if-eqz v3, :cond_b

    array-length v4, v3

    if-lez v4, :cond_b

    .line 790
    :goto_5
    if-nez v3, :cond_1

    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    goto :goto_0

    .line 709
    .end local v0           #i:I
    .end local v1           #iBlinkCount:I
    .end local v2           #iRetryCount:I
    .end local v3           #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_6
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 671
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 721
    .restart local v0       #i:I
    .restart local v1       #iBlinkCount:I
    .restart local v2       #iRetryCount:I
    .restart local v3       #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 761
    :cond_8
    :try_start_6
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 762
    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    new-instance v4, Lcom/sec/android/facedetection/SecFace;

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Lcom/sec/android/facedetection/SecFace;-><init>(Lcom/sec/android/facedetection/SecFace;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 765
    :cond_9
    const/4 v4, 0x5

    if-lt v1, v4, :cond_a

    .line 767
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    goto :goto_4

    .line 771
    :cond_a
    const/4 v4, 0x1

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 772
    const/4 v4, 0x0

    new-instance v5, Lcom/sec/android/facedetection/SecFace;

    invoke-direct {v5}, Lcom/sec/android/facedetection/SecFace;-><init>()V

    aput-object v5, v3, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 778
    .end local v0           #i:I
    .end local v1           #iBlinkCount:I
    .end local v2           #iRetryCount:I
    :catchall_1
    move-exception v4

    :try_start_7
    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 787
    .restart local v0       #i:I
    .restart local v1       #iBlinkCount:I
    .restart local v2       #iRetryCount:I
    :cond_b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mIsFailed:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 727
    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method

.method private declared-synchronized increaseListener()V
    .locals 2

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 601
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.acquire() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaceIndicator:Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$FaceIndicator;->onCameraStatusChanged(Z)V

    .line 608
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->openCamera()V

    .line 610
    :cond_1
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mIsFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private letGo()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->completeDone:Z

    .line 249
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 250
    return-void
.end method

.method private openCamera()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 586
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 587
    return-void
.end method

.method private sendMessageAndWait(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessage(I)Z

    .line 573
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, p1}, Lcom/sec/android/facedetection/FaceDetectionService;->waitHere(I)V

    .line 577
    const-string v0, "FaceDetectionService"

    const-string v1, "DONE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 581
    return-void

    .line 579
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private showErrorPopup()V
    .locals 2

    .prologue
    .line 833
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 873
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 874
    return-void
.end method

.method public static strToSize(Ljava/lang/String;)Lcom/sec/android/facedetection/FaceDetectionService$Size;
    .locals 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 888
    if-nez p0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-object v3

    .line 889
    :cond_1
    const-string v4, "auto"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 891
    const/16 v4, 0x78

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 892
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 893
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, height:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/facedetection/FaceDetectionService$Size;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService$Size;-><init>(II)V

    goto :goto_0
.end method

.method private waitHere(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->completeDone:Z

    .line 222
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->completeDone:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 806
    const-string v0, "FaceDetectionService"

    const-string v1, "FaceDetectionClient died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    .line 808
    return-void
.end method

.method public disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 653
    const-string v1, "FaceDetectionService"

    const-string v2, "disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 657
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "FaceDetectionService"

    const-string v2, "unlinkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 812
    const-string v0, "FaceDetectionService"

    const-string v1, "DUMP Face detection service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ThemeService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    :goto_0
    return-void

    .line 823
    :cond_0
    const-string v0, "FaceDetectionService is up and running!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " # of clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 826
    const-string v0, " Camera is opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :cond_1
    const-string v0, " Camera is not opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 640
    const-string v1, "FaceDetectionService"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->increaseListener()V

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FaceDetectionService"

    const-string v2, "linkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "last"
    .parameter "current"

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public isCameraAllowed()Z
    .locals 4

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 558
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 563
    :cond_0
    const-string v1, "FaceDetectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v0
.end method

.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 487
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 489
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "FaceDetectionService"

    const-string v1, "Whatever happened to camera service, I will try to re-open camera! I have a client waiting for my service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 495
    :cond_0
    return-void
.end method

.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 453
    if-nez p1, :cond_0

    .line 479
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 483
    return-void

    .line 459
    :cond_0
    :try_start_1
    array-length v0, p1

    new-array v0, v0, [Lcom/sec/android/facedetection/SecFace;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 461
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 464
    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    new-instance v0, Lcom/sec/android/facedetection/SecFace;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    aget-object v2, p1, v7

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    aget-object v3, p1, v7

    iget v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->leftEye:Landroid/graphics/Point;

    aget-object v5, p1, v7

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rightEye:Landroid/graphics/Point;

    aget-object v6, p1, v7

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->mouth:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/facedetection/SecFace;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v0, v8, v7

    .line 461
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 475
    :cond_1
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 481
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 498
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame   data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method
