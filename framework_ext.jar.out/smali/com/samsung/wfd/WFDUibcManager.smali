.class public Lcom/samsung/wfd/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDUibcManager$EventQueue;,
        Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private mCameraOrientation:I

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mEventReaderThread:Ljava/lang/Thread;

.field private mLandscapeOrientation:Z

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSPCOrientation:Z

.field private sensorRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "WFDUibcManager"

    const-string v1, "[WFDUibcManager] System.loadLibrary()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "uibcinjectionservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    .line 63
    iput-boolean v3, p0, Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z

    .line 64
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mSPCOrientation:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wfd/WFDUibcManager;->sensorRotation:F

    .line 67
    iput v2, p0, Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I

    .line 69
    iput v1, p0, Lcom/samsung/wfd/WFDUibcManager;->CAMERA_0:I

    .line 70
    iput v3, p0, Lcom/samsung/wfd/WFDUibcManager;->CAMERA_90:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/wfd/WFDUibcManager;->CAMERA_180:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/wfd/WFDUibcManager;->CAMERA_270:I

    .line 74
    iput v2, p0, Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I

    .line 75
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mCoupleShot:Z

    .line 95
    iput-object p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/samsung/wfd/WFDUibcManager$1;

    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/wfd/WFDUibcManager$1;-><init>(Lcom/samsung/wfd/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 105
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wfd/WFDUibcManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/wfd/WFDUibcManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDUibcManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mSPCOrientation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/wfd/WFDUibcManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mSPCOrientation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WFDUibcManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/wfd/WFDUibcManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WFDUibcManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/wfd/WFDUibcManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mLandscapeOrientation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WFDUibcManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method

.method private native enterHandModeJNI()I
.end method

.method private native exitHandModeJNI()V
.end method

.method private native sendMultiPointerDownJNI(IFF)V
.end method

.method private native sendMultiPointerMoveJNI(IFF)V
.end method

.method private native sendMultiPointerUpJNI(I)V
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .parameter "isCoupleShot"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mCoupleShot:Z

    .line 145
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;-><init>(Lcom/samsung/wfd/WFDUibcManager;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/samsung/wfd/WFDUibcManager;->enterHandModeJNI()I

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return v3

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    .line 131
    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    .line 132
    invoke-direct {p0}, Lcom/samsung/wfd/WFDUibcManager;->exitHandModeJNI()V

    .line 133
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
