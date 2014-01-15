.class public final Lcom/sec/android/app/sysscope/service/SysScope;
.super Ljava/lang/Object;
.source "SysScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;,
        Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SYSSCOPE:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPE"

.field public static final SYSSCOPE_DIAG_ITEM_SYSTEM_MODIFICATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYSSCOPE_INFO_VERSION:Ljava/lang/String; = "versionName"

.field public static final SYSSCOPE_RETURN_CODE_FAIL_ERROR:I = 0xff

.field public static final SYSSCOPE_RETURN_CODE_FAIL_INVALID_CONFIGURATION:I = 0x16

.field public static final SYSSCOPE_RETURN_CODE_FAIL_INVALID_SIGNATURE:I = 0x15

.field public static final SYSSCOPE_RETURN_CODE_FAIL_NO_PERMISSION:I = 0x14

.field public static final SYSSCOPE_RETURN_CODE_FAIL_REGISTER_LISTENER:I = 0x10

.field public static final SYSSCOPE_RETURN_CODE_FAIL_SERVICE_BINDING:I = 0x11

.field public static final SYSSCOPE_RETURN_CODE_FAIL_SERVICE_BUSY_TRY_AGAIN:I = 0x12

.field public static final SYSSCOPE_RETURN_CODE_FAIL_SERVICE_NOT_CONNECTED:I = 0x13

.field public static final SYSSCOPE_RETURN_CODE_FAIL_VERSION_MISS_MATCH:I = 0x17

.field public static final SYSSCOPE_RETURN_CODE_SCANNING_NOT_YET_DONE:I = 0x18

.field public static final SYSSCOPE_RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SysScope"

.field private static final sSupportedLowestSysScopeVersion:I = 0x4


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

.field private final mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

.field private mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    .line 293
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    .line 294
    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    .line 297
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->connectToService()V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    .line 306
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    .line 307
    iput-object p2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 308
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->connectToService()V

    .line 311
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/sysscope/service/SysScope;Lcom/sec/android/app/sysscope/service/ISysScopeService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/sysscope/service/SysScope;)Z
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifyServiceIntegrity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/ISysScopeService;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/sysscope/service/SysScope;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private confirmServiceVersion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 640
    .local v0, info:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 641
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 643
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 660
    :cond_0
    :goto_0
    return v2

    .line 647
    :cond_1
    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 648
    .local v1, versionCode:I
    if-gez v1, :cond_2

    .line 649
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v3, :cond_2

    .line 650
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v4, 0xff

    invoke-interface {v3, v4}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 653
    :cond_2
    const/4 v3, 0x4

    if-lt v3, v1, :cond_3

    .line 654
    const/4 v2, 0x1

    goto :goto_0

    .line 657
    :cond_3
    const-string v3, "SysScope"

    .line 658
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version missmatched, change the library with the valid version. The version of server is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectToService()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "SYSSCOPE"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifyServiceIntegrity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    .line 318
    :cond_0
    return-void
.end method

.method private createServiceConnection()Z
    .locals 5

    .prologue
    .line 591
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 593
    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    .line 597
    :cond_0
    new-instance v2, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;-><init>(Lcom/sec/android/app/sysscope/service/SysScope;Lcom/sec/android/app/sysscope/service/SysScope$SysScopeServiceConnection;)V

    iput-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.intent.action.SYSSCOPE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    .line 600
    const/4 v4, 0x1

    .line 599
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 602
    .local v1, ret:Z
    const-string v2, "SysScope"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init service: ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disconnectServiceConnection()V
    .locals 3

    .prologue
    .line 607
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->unregisterListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 621
    const-string v1, "SysScope"

    const-string v2, "disconnectServiceConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope$1;-><init>(Lcom/sec/android/app/sysscope/service/SysScope;)V

    return-object v0
.end method

.method private verifyServiceIntegrity()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->verifySysScopeService()Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 667
    const/16 v2, 0x15

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 668
    :cond_0
    const-string v1, "SysScope"

    const-string v2, "SysScope service has invalid signature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    :goto_0
    return v0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->confirmServiceVersion()Z

    move-result v1

    if-nez v1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 675
    const/16 v2, 0x17

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    goto :goto_0

    .line 680
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySysScopeService()Z
    .locals 4

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, ret:Z
    new-instance v1, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;-><init>(Landroid/content/Context;)V

    .line 628
    .local v1, sv:Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifySysScopeService()Z

    move-result v0

    .line 629
    if-nez v0, :cond_1

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x15

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 632
    :cond_0
    const/4 v2, 0x0

    .line 635
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connect()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x11

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-nez v2, :cond_0

    .line 326
    const/16 v1, 0x10

    .line 336
    :goto_0
    return v1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->createServiceConnection()Z

    move-result v0

    .line 330
    .local v0, ret:Z
    if-nez v0, :cond_1

    .line 331
    const-string v2, "SysScope"

    const-string v3, "Failt to bind service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    goto :goto_0

    .line 336
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScope;->disconnectServiceConnection()V

    .line 546
    return-void
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 413
    .local v1, info:Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 416
    :cond_0
    const/4 v2, 0x0

    .line 429
    :goto_0
    return-object v2

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 420
    if-nez v1, :cond_2

    .line 421
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v2, v1

    .line 429
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 497
    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 506
    :cond_0
    :goto_0
    return-object v1

    .line 502
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getLogState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 557
    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 566
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getLogState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getScanPeriod()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 461
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 464
    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 473
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->getScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerListener(Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->registerListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public run()I
    .locals 4

    .prologue
    const/16 v1, 0x13

    .line 350
    const/16 v0, 0xff

    .line 353
    .local v0, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 371
    :cond_0
    :goto_0
    return v1

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v1}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->scope()I

    move-result v0

    .line 361
    if-eqz v0, :cond_2

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v1, v0

    .line 366
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    :goto_1
    move v1, v0

    .line 371
    goto :goto_0

    .line 367
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public run(I)I
    .locals 4
    .parameter "diagItem"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x13

    .line 379
    const/16 v0, 0xff

    .line 383
    .local v0, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 400
    :cond_0
    :goto_0
    return v1

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->run(ILcom/sec/android/app/sysscope/service/ISysScopeListener;)I

    move-result v0

    .line 390
    if-eqz v0, :cond_2

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v1, v0

    .line 395
    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    :goto_1
    move v1, v0

    .line 400
    goto :goto_0

    .line 396
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setLogState(Z)V
    .locals 3
    .parameter "logState"

    .prologue
    .line 575
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 578
    const/16 v2, 0x13

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->setLogState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setScanPeriod(I)Z
    .locals 3
    .parameter "hour"

    .prologue
    .line 440
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    .line 443
    const/16 v2, 0x13

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 444
    :cond_0
    const/4 v1, 0x0

    .line 452
    :goto_0
    return v1

    .line 448
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->setScanPeriod(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 530
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mService:Lcom/sec/android/app/sysscope/service/ISysScopeService;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScope;->mRemoteListener:Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sysscope/service/ISysScopeService;->unregisterListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
