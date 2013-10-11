.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$1;,
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$StateFinish;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final PATH_OLD_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/shutdown.qmg"

.field private static final PATH_SHUTDOWNIMG_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND_MULTI_CSC:Ljava/lang/String; = "//system/csc_contents/PowerOff.ogg"

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private final BUFFER_SIZE:I

.field private bitmapQ:[Landroid/graphics/Bitmap;

.field bitmapQFront:I

.field bitmapQRear:I

.field drawBufferLock:Ljava/lang/Object;

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Landroid/os/Handler;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

.field private mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private qmgDecodeBuffer:[I

.field private qmgHandle:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->BUFFER_SIZE:I

    .line 85
    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 87
    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 88
    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    .line 94
    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 96
    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    .line 97
    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    .line 98
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 99
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 100
    new-instance v1, Lcom/android/server/power/ShutdownDialog$StateFinish;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/ShutdownDialog$StateFinish;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

    .line 101
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 109
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, startAnimation:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 128
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->height:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/power/ShutdownDialog;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->qmgDecodeBuffer:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/ShutdownDialog;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateFinish;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateFinish:Lcom/android/server/power/ShutdownDialog$StateFinish;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StatePrepare;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getAnimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->qmgHandle:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/power/ShutdownDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->width:I

    return p1
.end method

.method public static existAnim()Z
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->getAnimPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAnimPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "animPath"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    .end local p0
    .local v1, f:Ljava/io/File;
    .local v2, imei_mps_code:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 501
    .end local v1           #f:Ljava/io/File;
    .end local v2           #imei_mps_code:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .line 502
    .restart local v2       #imei_mps_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_1

    .line 504
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "//system/media/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_shutdown.qmg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 506
    .local v0, chameleonPath:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 511
    .end local v0           #chameleonPath:Ljava/lang/StringBuffer;
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "//system/csc_contents/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v1       #f:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    const-string p0, "//system/csc_contents/shutdown.qmg"

    goto :goto_0

    .line 514
    :cond_2
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    const-string v3, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .restart local v1       #f:Ljava/io/File;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    const-string p0, "//system/media/video/shutdown/shutdown.qmg"

    goto :goto_0

    .line 517
    :cond_3
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    const-string v3, "//system/media/shutdown.qmg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .restart local v1       #f:Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    const-string p0, "//system/media/shutdown.qmg"

    goto :goto_0

    .line 520
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static getChameleonCode()Ljava/lang/String;
    .locals 7

    .prologue
    .line 432
    new-instance v4, Ljava/io/File;

    const-string v5, "/carrier/chameleon.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    const-string v5, "/carrier/chameleon.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    :cond_0
    const/4 v1, 0x0

    .line 457
    .local v1, imei_mps_code:Ljava/lang/String;
    .local v2, in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v1

    .line 436
    .end local v1           #imei_mps_code:Ljava/lang/String;
    .end local v2           #in:Ljava/io/BufferedReader;
    :cond_2
    const-string v4, "ShutdownDialog"

    const-string v5, "Power off sound CHAMELEON is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x0

    .line 438
    .restart local v1       #imei_mps_code:Ljava/lang/String;
    const/4 v2, 0x0

    .line 440
    .restart local v2       #in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/efs/imei/mps_code.dat"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 441
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    .line 450
    if-eqz v3, :cond_3

    .line 451
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    :goto_1
    move-object v2, v3

    .line 456
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    const/4 v1, 0x0

    .line 450
    if-eqz v2, :cond_1

    .line 451
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 454
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    :goto_3
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 446
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v4, "ShutdownDialog"

    const-string v5, "read error : imei mps_code"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 447
    const/4 v1, 0x0

    .line 450
    if-eqz v2, :cond_1

    .line 451
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 453
    :catch_3
    move-exception v0

    .line 454
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    goto :goto_3

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 450
    :goto_5
    if-eqz v2, :cond_4

    .line 451
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 449
    :cond_4
    :goto_6
    throw v4

    .line 453
    :catch_4
    move-exception v0

    .line 454
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "ShutdownDialog"

    const-string v6, "FileReader close exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 453
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    .line 454
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "ShutdownDialog"

    const-string v5, "FileReader close exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_5

    .line 445
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_4

    .line 442
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "soundPath"

    .prologue
    .line 461
    if-eqz p0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    .end local p0
    .local v0, f:Ljava/io/File;
    .local v2, poweroff_wav:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 477
    .end local v0           #f:Ljava/io/File;
    .end local v2           #poweroff_wav:Ljava/lang/String;
    .restart local p0
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v3, "//system/csc_contents/PowerOff.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    const-string p0, "//system/csc_contents/PowerOff.ogg"

    goto :goto_0

    .line 482
    :cond_1
    const-string v2, "//system/media/audio/ui/PowerOff.wav"

    .line 483
    .restart local v2       #poweroff_wav:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const-string p0, "//system/media/audio/ui/PowerOff.wav"

    goto :goto_0

    .line 488
    :cond_2
    const-string v1, "//system/media/audio/ui/PowerOff.ogg"

    .line 489
    .local v1, poweroff_ogg:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 491
    const-string p0, "//system/media/audio/ui/PowerOff.ogg"

    goto :goto_0

    .line 494
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drawState()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 132
    const-string v0, "ShutdownDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    .line 136
    new-instance v0, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Landroid/os/Handler;

    .line 137
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 143
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 144
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 149
    return-void
.end method

.method public prepareBootup()V
    .locals 3

    .prologue
    .line 550
    const-string v0, "ShutdownDialog"

    const-string v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    const-string v1, "/system/media/warmboot.qmg"

    const-string v2, "/system/media/audio/ui/PowerOn.ogg"

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public prepareShutdown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "animPath"
    .parameter "soundPath"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0, p1, p2}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 562
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .locals 3
    .parameter "timeout"

    .prologue
    .line 528
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v1, p1}, Lcom/android/server/power/ShutdownDialog$DrawState;->waitForFinish(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const-string v1, "ShutdownDialog"

    const-string v2, "playing not yet. sleep a time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ShutdownDialog"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
