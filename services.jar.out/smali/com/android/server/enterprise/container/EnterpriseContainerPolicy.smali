.class public Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy$Stub;
.source "EnterpriseContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;,
        Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;
    }
.end annotation


# static fields
.field static final CONTAINER_CHANGE_KNOX_MODE:Ljava/lang/String; = "com.sec.knox.containersettings.knox.mode"

.field static final CONTAINER_CHANGE_MODE_INTENT:Ljava/lang/String; = "com.sec.knox.containersettings.changemode"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final KNOX_LAUNCHER:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field private static TAG:Ljava/lang/String; = null

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static final UNINSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.UNINSTALL_SHORTCUT"


# instance fields
.field private mActiveContainer:I

.field private mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

.field private mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKnoxMode:Z

.field private mModeReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "EnterpriseContainerPolicy Service"

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy$Stub;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 85
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 86
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 87
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 88
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 102
    iput-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    .line 103
    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    .line 105
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    .line 298
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 299
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 301
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v1, filterMode:Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.containersettings.changemode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v0, filterContainer:Landroid/content/IntentFilter;
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private addContainerToDB(II)Z
    .locals 6
    .parameter "containerId"
    .parameter "ownerUid"

    .prologue
    .line 1538
    const/4 v2, 0x0

    .line 1541
    .local v2, retVal:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addContainer(II)Z

    move-result v1

    .line 1542
    .local v1, result:Z
    if-eqz v1, :cond_1

    .line 1543
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container Added to DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 1546
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1557
    .end local v1           #result:Z
    :cond_0
    :goto_0
    return v2

    .line 1547
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 1548
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1554
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:Z
    :catch_1
    move-exception v0

    .line 1555
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at addContainerToDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1552
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:Z
    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add container to DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, isAdminApplication:Z
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 585
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, -0x1

    .line 587
    .local v4, uid:I
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 588
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 589
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForSystemUIDApplicationForVpn uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 591
    const/4 v2, 0x1

    .line 596
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private enforceActiveAdminPermission(ILjava/lang/String;)I
    .locals 1
    .parameter "containerId"
    .parameter "reqPermission"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 359
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceAppPermission(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 372
    const-string v0, "android.permission.sec.MDM_APP_MGMT"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission()I
    .locals 2

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 363
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforcePasswordPermission(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 368
    const-string v0, "android.permission.sec.MDM_SECURITY"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceVpnPermission(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 376
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getService()Lcom/sec/knox/container/IEnterpriseContainerService;
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "container_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 315
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container Service Bind returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-nez v1, :cond_1

    .line 330
    const-string v1, "enterprise_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 332
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 337
    .end local v0           #b:Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    return-object v1
.end method

.method private manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .parameter "containerId"
    .parameter "pkgName"
    .parameter "action"
    .parameter "permission"

    .prologue
    .line 1002
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v19

    if-nez v19, :cond_0

    .line 1003
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "ContainerService is not yet ready!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v15, 0x0

    .line 1068
    :goto_0
    return v15

    .line 1007
    :cond_0
    const/4 v15, 0x0

    .line 1008
    .local v15, retVal:Z
    const/4 v13, 0x0

    .line 1010
    .local v13, pkgInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1012
    .local v17, token:J
    :try_start_0
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, containerCategory:Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1014
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1019
    .local v11, pMgr:Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v12, pickAppShortcut:Landroid/content/Intent;
    invoke-virtual {v12, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 1022
    .local v14, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_2

    .line 1023
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1024
    .local v9, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1025
    move-object v13, v9

    .line 1026
    const/4 v15, 0x1

    .line 1032
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v15, :cond_4

    if-eqz v13, :cond_4

    .line 1033
    const/16 v19, 0x80

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1036
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    new-instance v16, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v16, shortcutIntent:Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const/high16 v19, 0x1000

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1040
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v10, installAppShorcut:Landroid/content/Intent;
    const-string v19, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1045
    const-string v19, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1048
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 1049
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1050
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const-string v19, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v19, "duplicate"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1053
    const-string v19, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1065
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v5           #containerCategory:Ljava/lang/String;
    .end local v10           #installAppShorcut:Landroid/content/Intent;
    .end local v11           #pMgr:Landroid/content/pm/PackageManager;
    .end local v12           #pickAppShortcut:Landroid/content/Intent;
    .end local v14           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #shortcutIntent:Landroid/content/Intent;
    :cond_4
    :goto_1
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1058
    :catch_0
    move-exception v7

    .line 1059
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "package name not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v15, 0x0

    goto :goto_1

    .line 1061
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 1062
    .local v7, e:Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "something wrong here"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    const/4 v15, 0x0

    goto :goto_1

    .line 1065
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private removeContainerFromDB(I)Z
    .locals 7
    .parameter "containerId"

    .prologue
    const/4 v6, -0x1

    .line 1561
    const/4 v2, 0x0

    .line 1562
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v1

    .line 1564
    .local v1, ownerUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_0

    if-eq v1, v6, :cond_0

    .line 1566
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeContainer(I)Z

    move-result v2

    .line 1574
    if-eqz v2, :cond_2

    .line 1575
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1584
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_1

    if-eq v1, v6, :cond_1

    .line 1586
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1592
    :cond_1
    :goto_2
    return v2

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1580
    :catch_1
    move-exception v0

    .line 1581
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at removeContainerFromDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1587
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1588
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private translateStatus(I)I
    .locals 0
    .parameter "status"

    .prologue
    .line 767
    sparse-switch p1, :sswitch_data_0

    .line 776
    .end local p1
    :goto_0
    return p1

    .line 772
    .restart local p1
    :sswitch_0
    const/16 p1, 0x5b

    goto :goto_0

    .line 774
    :sswitch_1
    const/16 p1, 0x5a

    goto :goto_0

    .line 767
    :sswitch_data_0
    .sparse-switch
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x61 -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public activateContainer(I)Z
    .locals 6
    .parameter "containerId"

    .prologue
    .line 1450
    const/4 v1, 0x0

    .line 1451
    .local v1, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1452
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1464
    .end local v1           #success:Z
    .local v2, success:I
    :goto_0
    return v2

    .line 1456
    .end local v2           #success:I
    .restart local v1       #success:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1459
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->activateContainer(I)Z

    move-result v1

    .line 1460
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateContainer: Request sent to ContainerService :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 1464
    .restart local v2       #success:I
    goto :goto_0

    .line 1461
    .end local v2           #success:I
    :catch_0
    move-exception v0

    .line 1462
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API activateContainer "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public addHomeShortcut(ILjava/lang/String;)Z
    .locals 2
    .parameter "containerId"
    .parameter "pkgName"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 989
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    const-string v1, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addVpnProfile(ILjava/lang/String;)Z
    .locals 12
    .parameter "containerId"
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_0

    .line 602
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return v9

    .line 606
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 607
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v1

    .line 609
    .local v1, getContainerizedPackageNameForVpn:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 610
    .local v3, length:I
    const/4 v4, 0x0

    .line 611
    .local v4, pkgNames:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 612
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pkgNames:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 614
    .restart local v4       #pkgNames:[Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 615
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addVpnProfile: No packages found in container "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_2
    const/4 v6, 0x1

    .line 620
    .local v6, retVal:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v4

    if-ge v2, v7, :cond_5

    .line 621
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addVpnProfile: The Package added to VPN is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    aget-object v7, v4, v2

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 623
    .local v0, checkIfApplicationHasSystemUID:Z
    if-eqz v0, :cond_4

    .line 620
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    aget-object v10, v4, v2

    invoke-interface {v7, p1, v10, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v5

    .line 627
    .local v5, respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v5, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v10

    if-eqz v10, :cond_7

    move v10, v8

    :goto_3
    and-int/2addr v7, v10

    if-eqz v7, :cond_3

    .line 628
    const/4 v6, 0x0

    .line 631
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeVPNProfile(I)Z

    .end local v0           #checkIfApplicationHasSystemUID:Z
    .end local v5           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_5
    move v9, v6

    .line 637
    goto/16 :goto_0

    .restart local v0       #checkIfApplicationHasSystemUID:Z
    .restart local v5       #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_6
    move v7, v9

    .line 627
    goto :goto_2

    :cond_7
    move v10, v9

    goto :goto_3
.end method

.method public addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "containerId"
    .parameter "packageName"
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 501
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 502
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return v5

    .line 505
    :cond_0
    const/4 v1, 0x1

    .line 506
    .local v1, retVal:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, transformedName:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2, p3}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 511
    .local v0, respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 512
    const/4 v1, 0x0

    .end local v0           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_1
    :goto_3
    move v5, v1

    .line 520
    goto :goto_0

    .restart local v0       #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_2
    move v3, v5

    .line 511
    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 515
    .end local v0           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_4
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnProfileToApp: No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "found for container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 7
    .parameter "statusCallback"
    .parameter "flag"

    .prologue
    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 384
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 397
    .end local v2           #success:Z
    .local v3, success:I
    :goto_0
    return v3

    .line 388
    .end local v3           #success:I
    .restart local v2       #success:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission()I

    move-result v0

    .line 391
    .local v0, adminUid:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v0, v6, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v4, v5, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v2

    .line 393
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createContainer: Request sent to ContainerService - RequestID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 397
    .restart local v3       #success:I
    goto :goto_0

    .line 394
    .end local v3           #success:I
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at EnterpriseContainerPolicy API createContainer "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public deleteHomeShortcut(ILjava/lang/String;)Z
    .locals 2
    .parameter "containerId"
    .parameter "pkgName"

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 996
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    const-string v1, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enforcePasswordChange(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 751
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v1, 0x0

    .line 763
    :goto_0
    return v1

    .line 755
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->enforcePasswordChange(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API enforcePasswordChange "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveContainerId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return v0
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "containerId"
    .parameter "profileName"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 550
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v12

    if-nez v12, :cond_1

    .line 551
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "VpnService is not yet ready!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v9, 0x0

    .line 579
    :cond_0
    :goto_0
    return-object v9

    .line 555
    :cond_1
    const/4 v9, 0x0

    .line 556
    .local v9, retVal:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 558
    if-eqz p2, :cond_4

    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, p1, v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 561
    .local v8, respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v8, :cond_2

    move v12, v10

    :goto_1
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v13

    if-nez v13, :cond_3

    :goto_2
    and-int/2addr v10, v12

    if-eqz v10, :cond_0

    .line 562
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 563
    .local v7, packageNames:[Ljava/lang/String;
    array-length v10, v7

    new-array v9, v10, [Ljava/lang/String;

    .line 564
    const/4 v3, 0x0

    .line 565
    .local v3, i:I
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 566
    .local v6, packageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v10, p1, v6}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 568
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The string in VpnPolicy returned :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    add-int/lit8 v3, v3, 0x1

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #packageNames:[Ljava/lang/String;
    :cond_2
    move v12, v11

    .line 561
    goto :goto_1

    :cond_3
    move v10, v11

    goto :goto_2

    .line 573
    .end local v8           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_4
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPackagesForProfile: No profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "found for container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 576
    :catch_0
    move-exception v2

    .line 577
    .local v2, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getContainerId(I)I
    .locals 5
    .parameter "appUID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 678
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    const/4 v0, 0x0

    .line 684
    .local v0, containerId:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerId(I)I

    move-result v0

    .line 685
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerId()-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_1
    if-gez v0, :cond_0

    .line 691
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled Exception in getContainerId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getContainerOwnerUid(I)I
    .locals 11
    .parameter "containerId"

    .prologue
    const/4 v10, -0x1

    .line 1319
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 1321
    .local v4, ownerUid:I
    if-ne v10, v4, :cond_3

    .line 1322
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1323
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "ContainerService is not yet ready!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1357
    .end local v4           #ownerUid:I
    .local v5, ownerUid:I
    :goto_0
    return v5

    .line 1328
    .end local v5           #ownerUid:I
    .restart local v4       #ownerUid:I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1330
    .local v7, token:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v9}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v3

    .line 1331
    .local v3, objs:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v3, :cond_2

    .line 1332
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1333
    .local v2, obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 1334
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    if-eq v9, v10, :cond_2

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getStatus(I)I

    move-result v6

    .line 1336
    .local v6, status:I
    const/16 v9, 0x5d

    if-eq v6, v9, :cond_4

    const/16 v9, 0x5e

    if-eq v6, v9, :cond_4

    .line 1338
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Container owner information was missing from Edm DB - adding now."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    .line 1341
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1353
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v3           #objs:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v6           #status:I
    :cond_2
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7           #token:J
    :cond_3
    move v5, v4

    .line 1357
    .end local v4           #ownerUid:I
    .restart local v5       #ownerUid:I
    goto :goto_0

    .line 1343
    .end local v5           #ownerUid:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v3       #objs:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4       #ownerUid:I
    .restart local v6       #status:I
    .restart local v7       #token:J
    :cond_4
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Container creation/removal in progress"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1350
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v3           #objs:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v6           #status:I
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Handled exception in getContainerOwnerUid()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1353
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public getContainerPackages(I)[Ljava/lang/String;
    .locals 8
    .parameter "containerId"

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 455
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v4, 0x0

    .line 472
    :cond_0
    :goto_0
    return-object v4

    .line 458
    :cond_1
    const/4 v4, 0x0

    .line 460
    .local v4, retVal:[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v3

    .line 461
    .local v3, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 462
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 463
    .local v2, length:I
    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 464
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 466
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packages found in container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v2           #length:I
    .end local v3           #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at EnterpriseContainerPolicy API getContainerPackages "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    if-gtz p1, :cond_0

    .line 718
    .end local p2
    :goto_0
    return-object p2

    .line 705
    .restart local p2
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 706
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 713
    :cond_2
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Containerzied Package name found for containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move-object v0, p2

    :cond_3
    move-object p2, v0

    .line 718
    goto :goto_0
.end method

.method public getContainerizedPackages(I)[Ljava/lang/String;
    .locals 8
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 478
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v4, 0x0

    .line 495
    :cond_0
    :goto_0
    return-object v4

    .line 481
    :cond_1
    const/4 v4, 0x0

    .line 483
    .local v4, retVal:[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 484
    .local v3, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 485
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 486
    .local v2, length:I
    if-eqz v3, :cond_2

    if-lez v2, :cond_2

    .line 487
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 489
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packages found in container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    .end local v2           #length:I
    .end local v3           #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 493
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at EnterpriseContainerPolicy API getContainerizedPackages "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "containerId"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    if-gtz p1, :cond_0

    .line 1261
    .end local p2
    :goto_0
    return-object p2

    .line 1249
    .restart local p2
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1250
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_1
    move-object v1, p2

    .line 1256
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerizedString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p2, v1

    .line 1261
    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getContainerizedString() "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getMaximumFailedPasswordsForDeviceDisable(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1284
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v1, -0x1

    .line 1295
    :goto_0
    return v1

    .line 1288
    :cond_0
    const/4 v1, -0x1

    .line 1290
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getMaximumFailedPasswordsForWipe "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .parameter "containerId"
    .parameter "who"

    .prologue
    .line 1160
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1161
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-wide/16 v1, -0x1

    .line 1171
    :goto_0
    return-wide v1

    .line 1165
    :cond_0
    const-wide/16 v1, -0x1

    .line 1167
    .local v1, retVal:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API getPasswordHistory "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "who"

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1195
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v1, 0x0

    .line 1205
    :goto_0
    return v1

    .line 1199
    :cond_0
    const/4 v1, 0x0

    .line 1201
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getMinPasswordComplexChars "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_0

    .line 428
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v5, 0x0

    .line 449
    :goto_0
    return-object v5

    .line 432
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 433
    .local v1, callingUid:I
    const/4 v5, 0x0

    .line 435
    .local v5, retVal:[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v6

    .line 436
    .local v6, retVal2:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 437
    .local v4, obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 438
    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 446
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v6           #retVal2:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :catch_0
    move-exception v2

    .line 447
    .local v2, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Failed at EnterpriseContainerPolicy API getOwnContainers "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 441
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #retVal2:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_2
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 442
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-object v5, v0

    goto :goto_0

    .line 444
    :cond_3
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "No containers!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getPasswordExpires(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "who"

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1092
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v1, 0x0

    .line 1102
    :goto_0
    return v1

    .line 1096
    :cond_0
    const/4 v1, 0x0

    .line 1098
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordExpires(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordExpires "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "who"

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1126
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v1, 0x0

    .line 1136
    :goto_0
    return v1

    .line 1130
    :cond_0
    const/4 v1, 0x0

    .line 1132
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordHistory "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1433
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v1, 0x0

    .line 1445
    :goto_0
    return v1

    .line 1437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1439
    const/4 v1, 0x0

    .line 1441
    .local v1, length:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordMinimumLength()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1397
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v1, 0x0

    .line 1409
    :goto_0
    return v1

    .line 1401
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1403
    const/4 v1, 0x0

    .line 1405
    .local v1, quality:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordQuality(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordQuality()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStatus(I)I
    .locals 4
    .parameter "containerId"

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 783
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v1, -0x1

    .line 793
    :goto_0
    return v1

    .line 787
    :cond_0
    const/4 v1, 0x0

    .line 789
    .local v1, retVal:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getStatus(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->translateStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getStatus "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installPackage(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 10
    .parameter "containerId"
    .parameter "packagePath"
    .parameter "statusCallback"
    .parameter "installType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 836
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ContainerService is not yet ready!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v9, 0x0

    .line 861
    :goto_0
    return v9

    .line 840
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v6

    .line 842
    .local v6, adminUid:I
    if-nez p2, :cond_1

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL apk file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 847
    .local v7, apkFile:Ljava/io/File;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 848
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exists or inaccessible file-path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_3
    const/4 v9, 0x0

    .line 855
    .local v9, retVal:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v3, p0, v6, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    const/4 v5, 0x2

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/knox/container/IEnterpriseContainerService;->installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 858
    :catch_0
    move-exception v8

    .line 859
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at EnterpriseContainerPolicy API installPackages "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1363
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v1, 0x1

    .line 1375
    :goto_0
    return v1

    .line 1367
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1369
    const/4 v1, 0x1

    .line 1371
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isActivePasswordSufficient(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API isActivePasswordSufficient()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isCameraEnabled(I)Z
    .locals 6
    .parameter "containerId"

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1300
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v1, 0x1

    .line 1314
    :goto_0
    return v1

    .line 1304
    :cond_0
    const/4 v1, 0x1

    .line 1305
    .local v1, retVal:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1307
    .local v2, uid:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/sec/knox/container/IEnterpriseContainerService;->getAllowCamera(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1311
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at EnterpriseContainerPolicy API getAllowCamera()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1311
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isContainerMode()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method public isPasswordVisibilityEnabled(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1229
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v1, 0x0

    .line 1239
    :goto_0
    return v1

    .line 1233
    :cond_0
    const/4 v1, 0x0

    .line 1235
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isPasswordVisisbilityEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API isPasswordVisisbilityEnabled "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public lockContainer(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 799
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v1, 0x0

    .line 811
    :goto_0
    return v1

    .line 803
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 805
    const/4 v1, 0x0

    .line 807
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->lockContainer(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API lockContainer "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1491
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1496
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 8
    .parameter "uid"

    .prologue
    .line 1505
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1511
    .local v1, containerIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1512
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No containers owned by admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1516
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1517
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1521
    :cond_4
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to delete containers for ownerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1524
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1525
    .local v0, containerId:I
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v6, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v5, v0, v6}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v4

    .line 1527
    .local v4, retVal:Z
    if-eqz v4, :cond_5

    .line 1528
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v4

    .line 1530
    :cond_5
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerService.removeContainer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    .end local v0           #containerId:I
    .end local v4           #retVal:Z
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1531
    :catch_0
    move-exception v2

    .line 1532
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .parameter "containerId"
    .parameter "statusCallback"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 403
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v2, 0x0

    .line 422
    :goto_0
    return v2

    .line 407
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 409
    .local v0, adminUid:I
    const/4 v2, 0x0

    .line 411
    .local v2, retVal:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    .line 413
    if-eqz v2, :cond_1

    .line 414
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request sent to ContainerService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v2

    goto :goto_0

    .line 417
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API removeContainer "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVPNProfile(I)Z
    .locals 12
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 642
    const/4 v3, 0x0

    .line 643
    .local v3, pkgNames:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 644
    .local v5, retVal:Z
    const/4 v4, 0x0

    .line 645
    .local v4, respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_0

    .line 646
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 672
    .end local v5           #retVal:Z
    .local v6, retVal:I
    :goto_0
    return v6

    .line 649
    .end local v6           #retVal:I
    .restart local v5       #retVal:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 650
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;

    move-result-object v3

    .line 651
    if-eqz v3, :cond_5

    .line 652
    array-length v2, v3

    .line 653
    .local v2, packageListSize:I
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeVPNProfile: The Number of Packages inside Container "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 655
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeVPNProfile: The Package going to be removed from"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    aget-object v7, v3, v1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 657
    .local v0, checkIfApplicationHasSystemUID:Z
    if-eqz v0, :cond_1

    .line 654
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    aget-object v10, v3, v1

    invoke-interface {v7, p1, v10}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v4

    .line 661
    if-eqz v4, :cond_2

    move v7, v8

    :goto_3
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v10

    if-eqz v10, :cond_3

    move v10, v8

    :goto_4
    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 662
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v7, v9

    .line 661
    goto :goto_3

    :cond_3
    move v10, v9

    goto :goto_4

    .line 665
    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 669
    .end local v0           #checkIfApplicationHasSystemUID:Z
    .end local v1           #i:I
    .end local v2           #packageListSize:I
    :cond_5
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeVPNProfile: No packages found in container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 670
    .restart local v6       #retVal:I
    goto/16 :goto_0

    .end local v6           #retVal:I
    .restart local v1       #i:I
    .restart local v2       #packageListSize:I
    :cond_6
    move v6, v5

    .line 672
    .restart local v6       #retVal:I
    goto/16 :goto_0
.end method

.method public removeVpnForApplication(ILjava/lang/String;)Z
    .locals 7
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 526
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 527
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return v5

    .line 530
    :cond_0
    const/4 v1, 0x1

    .line 531
    .local v1, retVal:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, transformedName:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 534
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 536
    .local v0, respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 537
    const/4 v1, 0x0

    .end local v0           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_1
    :goto_3
    move v5, v1

    .line 545
    goto :goto_0

    .restart local v0       #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_2
    move v3, v5

    .line 536
    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 540
    .end local v0           #respData:Landroid/app/enterprise/EnterpriseResponseData;,"Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_4
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeVpnProfileToApp: No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "found for container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public resetPassword(I)Z
    .locals 6
    .parameter "containerId"

    .prologue
    .line 1469
    const/4 v1, 0x0

    .line 1470
    .local v1, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1471
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1483
    .end local v1           #success:Z
    .local v2, success:I
    :goto_0
    return v2

    .line 1475
    .end local v2           #success:I
    .restart local v1       #success:Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1478
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->adminPasswordReset(I)Z

    move-result v1

    .line 1479
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enablePasswordVerifyMode: Request sent to ContainerService :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v1

    .line 1483
    .restart local v2       #success:I
    goto :goto_0

    .line 1480
    .end local v2           #success:I
    :catch_0
    move-exception v0

    .line 1481
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API resetPassword "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(ILandroid/content/ComponentName;I)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 1267
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1268
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :goto_0
    return v1

    .line 1273
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    const/4 v1, 0x1

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API setMaximumTimeToLock "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)Z
    .locals 4
    .parameter "containerId"
    .parameter "who"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1142
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1143
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_0
    return v1

    .line 1147
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1150
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    const/4 v1, 0x1

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API setMaximumTimeToLock "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "who"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1178
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :goto_0
    return-void

    .line 1182
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setMinPasswordComplexChars "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordExpires(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "who"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1075
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordExpires(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordExpires "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "who"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1109
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordHistory "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1416
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :goto_0
    return-void

    .line 1420
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordMinimumLength()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1381
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_0
    return-void

    .line 1385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordQuality(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordQuality()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPasswordVisibilityEnabled(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "who"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1212
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordVisibilityEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordVisibilityEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSubscriber(Lcom/android/server/enterprise/EnterpriseContainerSubscriber;)V
    .locals 0
    .parameter "subscriber"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 342
    return-void
.end method

.method public startApp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 907
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v1, 0x0

    .line 919
    :goto_0
    return v1

    .line 911
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 913
    const/4 v1, 0x0

    .line 915
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->startApp(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API startApp "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopApp(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 888
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, 0x0

    .line 900
    :goto_0
    return v1

    .line 892
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 894
    const/4 v1, 0x0

    .line 896
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->stopApp(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API stopApp "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1501
    return-void
.end method

.method public uninstallPackage(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .parameter "containerId"
    .parameter "packageName"
    .parameter "statusCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 868
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v2, 0x0

    .line 882
    :goto_0
    return v2

    .line 872
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v0

    .line 874
    .local v0, adminUid:I
    const/4 v2, 0x0

    .line 876
    .local v2, retVal:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 877
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, p2, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 879
    :catch_0
    move-exception v1

    .line 880
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API uninstallPackages "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unlockContainer(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 817
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, 0x0

    .line 829
    :goto_0
    return v1

    .line 821
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 823
    const/4 v1, 0x0

    .line 825
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->unlockContainer(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API unlockContainer "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyPassword(ILjava/lang/String;)I
    .locals 5
    .parameter "containerId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 724
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, -0x1

    .line 745
    :goto_0
    return v2

    .line 728
    :cond_0
    const/4 v2, 0x0

    .line 730
    .local v2, retVal:I
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)V

    .line 731
    .local v0, cb:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2, v0}, Lcom/sec/knox/container/IEnterpriseContainerService;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 732
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 733
    :goto_1
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 735
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerService API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 741
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 742
    .end local v0           #cb:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :catch_1
    move-exception v1

    .line 743
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 740
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cb:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :cond_1
    :try_start_5
    iget v2, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 741
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public writeData(ILjava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 20
    .parameter "containerId"
    .parameter "packageName"
    .parameter "fileName"
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 927
    const/16 v16, 0x0

    .line 928
    .local v16, retVal:Z
    const/4 v13, 0x0

    .line 929
    .local v13, out:Ljava/io/OutputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 934
    .local v8, destFile:Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 935
    if-nez p5, :cond_1

    .line 936
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setprop ctl.start createsystemfile:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, command:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v7, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, commandArray:[Ljava/lang/String;
    move-object v3, v6

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v5, v3, v11

    .line 940
    .local v5, commandArg:Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 943
    .end local v5           #commandArg:Ljava/lang/String;
    :cond_0
    new-instance v17, Ljava/lang/ProcessBuilder;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v15

    .line 945
    .local v15, process:Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 947
    const-wide/16 v17, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 952
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #command:Ljava/lang/String;
    .end local v6           #commandArray:[Ljava/lang/String;
    .end local v7           #commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #process:Ljava/lang/Process;
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 953
    .local v10, f:Ljava/io/File;
    if-eqz p4, :cond_4

    .line 954
    new-instance v14, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v14, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    .end local v13           #out:Ljava/io/OutputStream;
    .local v14, out:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 956
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes are written to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v14

    .line 964
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    const/16 v16, 0x1

    .line 965
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 974
    if-eqz v13, :cond_3

    .line 976
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 979
    .end local v10           #f:Ljava/io/File;
    :goto_2
    const/4 v13, 0x0

    .line 983
    :cond_3
    return v16

    .line 958
    .restart local v10       #f:Ljava/io/File;
    :cond_4
    if-nez p5, :cond_2

    .line 959
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 960
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is now removed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 965
    .end local v10           #f:Ljava/io/File;
    :catchall_0
    move-exception v17

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 967
    :catch_0
    move-exception v9

    .line 968
    .local v9, e:Ljava/io/IOException;
    :try_start_7
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "IOException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 974
    if-eqz v13, :cond_3

    .line 976
    :try_start_8
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 977
    :catch_1
    move-exception v17

    goto :goto_2

    .line 969
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 970
    .local v9, e:Ljava/lang/InterruptedException;
    :try_start_9
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "InterruptedException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 974
    if-eqz v13, :cond_3

    .line 976
    :try_start_a
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 977
    :catch_3
    move-exception v17

    goto :goto_2

    .line 971
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v9

    .line 972
    .local v9, e:Ljava/lang/Exception;
    :try_start_b
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 974
    if-eqz v13, :cond_3

    .line 976
    :try_start_c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 977
    :catch_5
    move-exception v17

    goto :goto_2

    .line 974
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    if-eqz v13, :cond_5

    .line 976
    :try_start_d
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 979
    :goto_4
    const/4 v13, 0x0

    .line 974
    :cond_5
    throw v17

    .line 977
    :catch_6
    move-exception v18

    goto :goto_4

    .restart local v10       #f:Ljava/io/File;
    :catch_7
    move-exception v17

    goto :goto_2

    .line 965
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    move-object v13, v14

    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    goto :goto_3
.end method
