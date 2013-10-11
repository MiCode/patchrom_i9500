.class public Lcom/sec/knox/container/EnterpriseContainerService;
.super Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.source "EnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;
.implements Lcom/sec/knox/container/manager/IStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/EnterpriseContainerService$3;,
        Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;,
        Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;,
        Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;,
        Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;,
        Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;,
        Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;,
        Lcom/sec/knox/container/EnterpriseContainerService$SecuritySpec;
    }
.end annotation


# static fields
.field private static final ACTION_REDEX_SERVICE:Ljava/lang/String; = "com.samsung.redexmobile.ReDexService"

.field private static ADD_EMAILID:I = 0x0

.field private static final APKPATH:Ljava/lang/String; = "/system/containers"

.field private static final CACHE_NULL:I = 0x38d

.field private static final CANCEL_REQUEST:I = 0x5

.field private static final CHANGE_PWD_REQUEST:I = 0x3

.field private static final CONTAINER:Ljava/lang/String; = "CONTAINER"

.field private static final CONTAINER_AGENT:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final CONTAINER_FRAMEWORK_APK_PACKAGES_KEY:Ljava/lang/String; = "framework.pkgName.key"

.field private static final CONTAINER_FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/containers/framework"

.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final CREATE_REQUEST:I = 0x1

.field private static final CUSTOM_CONTAINER_CATEGORY:Ljava/lang/String; = "sec_container_1.android.intent.category.LAUNCHER"

.field private static final DAY_MILISECONDS:J = 0x5265c00L

.field private static final DEFAULT_CONTAINER_ID:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ENCRYPTION_STATE_CHANGE_PASSWORD:I = 0x3

.field private static final ENCRYPTION_STATE_MOUNT:I = 0x0

.field private static final ENCRYPTION_STATE_PRIMARY_UNMOUNT:I = 0x4

.field private static final ENCRYPTION_STATE_REMOUNT:I = 0x2

.field private static final ENCRYPTION_STATE_UNMOUNT:I = 0x1

.field private static final EXCL_MEDIA_TYPES:I = 0x0

.field private static final INTENT_CONTAINER_CREATE_FROM_MDM:Ljava/lang/String; = "com.sec.knox.containeragent.createcontainer"

.field private static final INTENT_CONTAINER_EVENTS_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

.field private static final INVALID_CONTAINER_ID:I = -0x1

.field private static final INVALID_UID:I = -0x1

.field private static final IS_PRIMARY:Ljava/lang/String; = "primary"

.field private static final KNOX_LAUNCHER:Ljava/lang/String; = "sec_container_1.com.sec.android.app.knoxlauncher"

.field private static final MILISECONDS:J = 0x3e8L

.field private static final MOUNT_PATH:Ljava/lang/String; = "/data/data"

.field private static final MOUNT_PATH_SD:Ljava/lang/String; = "/mnt_1/sdcard_"

.field private static final MOUNT_UNMOUNT_ERROR_CODE:Ljava/lang/String; = "mount-unmount"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "ENTERPRISE_CONTAINER_NOTIFICATION"

.field private static final OUT_PATH:Ljava/lang/String; = "/data/system/container/signedout"

.field private static final PACKAGE_INSTALL_NAME:Ljava/lang/String; = "package_install_name"

.field private static final PACKAGE_INSTALL_SOURCE:Ljava/lang/String; = "package_install_source"

.field private static final PACKAGE_INSTALL_STATE:Ljava/lang/String; = "package_install_state"

.field private static final PACKAGE_INSTALL_UID:Ljava/lang/String; = "package_install_uid"

.field private static final PACKAGE_ORIGINAL_SIGNATURE:Ljava/lang/String; = "package_original_signature"

.field private static final PACKAGE_UNINSTALL_NAME:Ljava/lang/String; = "package_uninstall_name"

.field private static final PACKAGE_UNINSTALL_STATE:Ljava/lang/String; = "package_uninstall_state"

.field private static final PACKAGE_UNINSTALL_UID:Ljava/lang/String; = "package_uninstall_uid"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PASSWORDID:Ljava/lang/String; = "password"

.field private static REMOVE_EMAILID:I = 0x0

.field private static final REMOVE_REQUEST:I = 0x2

.field private static final SRC_PATH:Ljava/lang/String; = "/data/.container_"

.field private static final SRC_PATH_SD:Ljava/lang/String; = "/storage/container/.sdcontainer_"

.field private static final STAGE_PATH:Ljava/lang/String; = "/data/system/container/redexcache"

.field private static final SYSTEM_CERT_REFERENCE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerService"

.field private static final UNINSTALL_WHITELIST:[Ljava/lang/String; = null

.field private static final UNMOUNT_BOTH:I = 0x2

.field private static final UNMOUNT_CONTAINER_STOP:I = 0x1

.field private static final UNMOUNT_CONTAINER_UNINSTALL:I = 0x0

.field private static final UNMOUNT_PRIMARY:I = 0x0

.field private static final UNMOUNT_SECONDARY:I = 0x1

.field private static final VERIFY_PASSWORD_ACTION:Ljava/lang/String; = "com.sec.knox.container.VerifyContainerPassword"

.field private static final VERIFY_PWD_REQUEST:I = 0x4

.field private static final WHITELISTED_APPS:[Ljava/lang/String; = null

.field private static final WIPE_PRIVATE_BACKUP_DATA:I = 0x3

.field private static final WIPE_SDCARD:I = 0x1

.field private static final WIPE_SDCARD_DATA:I = 0x2

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private defaultPassword:Ljava/lang/String;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isServiceInitialized:Z

.field private mActiveAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

.field private mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList",
            "<",
            "Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mCreateContainerRequestId:I

.field private mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mDeathCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIBinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMountCallBackData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPasswordChangeResult:Z

.field private mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

.field private mRedexService:Lcom/samsung/redexmobile/IReDexService;

.field private mRemoveAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mStateManager:Lcom/sec/knox/container/manager/StateManager;

.field private mSyncObject:Ljava/lang/Object;

.field private mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

.field private mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

.field private mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

.field private mWakeLockHandler:Landroid/os/Handler;

.field redexServiceConnect:Landroid/content/ServiceConnection;

.field private refCountWakeLock:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    sput v2, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    .line 235
    sput v4, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.containeragent"

    aput-object v1, v0, v3

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v2

    const-string v1, "com.sec.knox.seandroid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    .line 247
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sec_container_1.com.sec.android.app.knoxlauncher"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 486
    invoke-direct {p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;-><init>()V

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 252
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    .line 253
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 254
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    .line 255
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    .line 256
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .line 257
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 258
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 259
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 260
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    .line 262
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 263
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 264
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 265
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mSyncObject:Ljava/lang/Object;

    .line 267
    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordChangeResult:Z

    .line 268
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 269
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 270
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    .line 271
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 272
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .line 273
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    .line 274
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    .line 276
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 277
    const-string v0, "KnockKnox!@#$"

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->defaultPassword:Ljava/lang/String;

    .line 278
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 279
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    .line 282
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    .line 283
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    .line 284
    iput-boolean v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    .line 460
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$1;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$1;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    .line 670
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$2;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/EnterpriseContainerService$2;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 488
    const-string v0, "EnterpriseContainerService"

    const-string v1, "EnterpriseContainerService Constructor"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method

.method private OnAdminRemoval(Landroid/content/ComponentName;)V
    .locals 10
    .parameter "admin"

    .prologue
    .line 980
    const-string v7, "EnterpriseContainerService"

    const-string v8, "EnterpriseContainerService: OnAdminRemoval()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 982
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 983
    .local v4, cidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 984
    .local v3, cid:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 985
    .local v0, adminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 986
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 988
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 990
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 992
    :cond_1
    const/4 v2, 0x0

    .line 993
    .local v2, cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    const/4 v1, 0x0

    .line 994
    .local v1, callback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 995
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 996
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #callback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    check-cast v1, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 998
    .restart local v1       #callback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    goto :goto_0

    .line 1000
    .end local v1           #callback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v2           #cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    :cond_3
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1005
    .end local v0           #adminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v3           #cid:Ljava/lang/Integer;
    .end local v4           #cidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeActiveAdmin(Landroid/content/ComponentName;)Z

    .line 1006
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1007
    .local v5, containerId:I
    if-lez v5, :cond_5

    .line 1008
    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    .line 1009
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    .line 1010
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, v5}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1012
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/samsung/redexmobile/IReDexService;)Lcom/samsung/redexmobile/IReDexService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRedexService:Lcom/samsung/redexmobile/IReDexService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->REMOVE_EMAILID:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->incrementWakeLock()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfAdminHasBeenRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->decrementWakeLock()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanUpBinder()V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$3400()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-object p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/app/enterprise/IEnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnPolicy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/app/enterprise/IEnterpriseVpnPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    return-void
.end method

.method static synthetic access$3802(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/knox/container/EnterpriseContainerService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/knox/container/EnterpriseContainerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    return-object p1
.end method

.method private declared-synchronized acquireLock()V
    .locals 2

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->acquiring wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private actOnWrongPasswordAttempt(I)V
    .locals 2
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    .line 1139
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportFailedPasswordAttempt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1141
    invoke-direct {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    goto :goto_0
.end method

.method private activatePasswordAndContainer(ILjava/lang/String;)Z
    .locals 5
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 3614
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 3616
    .local v1, tempState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3617
    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer Restarting timer"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V

    .line 3619
    const-string v2, "EnterpriseContainerService"

    const-string v3, "activatePasswordAndContainer firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.close_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3622
    .local v0, redexclosedialog:Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3623
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3624
    const/4 v2, 0x1

    .line 3626
    .end local v0           #redexclosedialog:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    .locals 3
    .parameter "container"
    .parameter "containerId"
    .parameter "containerStatus"

    .prologue
    .line 2572
    new-instance v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    .line 2573
    .local v0, object:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    .line 2574
    invoke-virtual {v0, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 2575
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    .line 2579
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 2580
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 2582
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    .line 2583
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/manager/StateManager;->updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V

    .line 2584
    return-void

    .line 2580
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 7
    .parameter "container"
    .parameter "containerId"

    .prologue
    const/4 v4, 0x0

    .line 2526
    const-string v3, "EnterpriseContainerService"

    const-string v5, "addOrUpdateContainerToDB()"

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2528
    .local v2, contentValues:Landroid/content/ContentValues;
    const-string v3, "containerid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2529
    if-nez p1, :cond_1

    .line 2530
    const-string v3, "EnterpriseContainerService"

    const-string v4, "addOrUpdateContainerToDB - EnterpriseContainerObjectParam is null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2559
    const-string v3, "activestatus"

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2561
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v5}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-result v3

    .line 2564
    :goto_1
    return v3

    .line 2532
    :cond_1
    const-string v3, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateContainerToDB-Email + owner + securitytext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    const-string v3, "email"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    const-string v3, "securitytext"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    const-string v3, "admin_uid"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2540
    const-string v3, "locktype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getLockType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2541
    const-string v5, "containertype"

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getAdmin()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2543
    const-string v3, "deviceFirmwareVersion"

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2546
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2547
    .local v1, blob:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getSecurityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2548
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2549
    const-string v3, "securityicon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 2541
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #blob:Ljava/io/ByteArrayOutputStream;
    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    .line 2564
    :cond_3
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v2, p2}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    goto/16 :goto_1
.end method

.method private bindRedexService()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.redexmobile.ReDexService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->redexServiceConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 458
    return-void
.end method

.method private changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 18
    .parameter "containerId"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "statusCallback"

    .prologue
    .line 3080
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changeContainerPassword()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3083
    .local v6, data:Landroid/os/Bundle;
    const-string v2, "containerid"

    move/from16 v0, p1

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v2}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v4

    .line 3086
    .local v4, requestId:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3088
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "A request for change password / verify password is in progress calling failure callback."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    const/16 v2, 0x3f5

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3139
    :goto_0
    return-void

    .line 3094
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3095
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change Password requestId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v8}, Lcom/sec/knox/container/manager/StateManager;->checkStateTransition(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v3, :cond_3

    .line 3102
    invoke-direct/range {p0 .. p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3104
    .local v5, validationMsg:I
    const/16 v2, 0x3b

    if-eq v5, v2, :cond_2

    .line 3105
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Validate Password  error code: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    const/4 v3, 0x3

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3134
    .end local v5           #validationMsg:I
    :catch_0
    move-exception v14

    .line 3135
    .local v14, ex:Ljava/lang/Exception;
    const/4 v9, 0x3

    const/16 v11, 0x3f5

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 3137
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangePassword Failure happend "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3109
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v5       #validationMsg:I
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt_1/sdcard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3110
    .local v15, sdMountPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3111
    .local v16, token:J
    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v9, 0x3

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v12}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 3114
    .local v7, callback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    invoke-virtual {v7, v4}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 3116
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v15

    move-object v12, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Landroid/dirEncryption/DirEncryptionManager;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    .line 3119
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3120
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Moving ahead and Waiting for change password to be done"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3124
    .end local v5           #validationMsg:I
    .end local v7           #callback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .end local v15           #sdMountPath:Ljava/lang/String;
    .end local v16           #token:J
    :cond_3
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container doesnt extsts. Change password failed."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const/4 v9, 0x3

    const/16 v11, 0x3f5

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 3129
    :cond_4
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Old password wrong - calling failure callback."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    const/4 v9, 0x3

    const/16 v11, 0x3f5

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private changePasswordIfPasswordHasExpired(I)Z
    .locals 2
    .parameter "containerId"

    .prologue
    .line 3752
    const-string v0, "EnterpriseContainerService"

    const-string v1, "changePasswordIfPasswordHasExpired() wrapper"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3753
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v0

    return v0
.end method

.method private changePasswordIfPasswordHasExpired(IZ)Z
    .locals 5
    .parameter "containerId"
    .parameter "enforce"

    .prologue
    const/4 v1, 0x1

    .line 3757
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired() internal"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3758
    if-eq p2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->passwordHasExpired(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3759
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_RESET_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 3762
    .local v0, tempState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3763
    const-string v2, "EnterpriseContainerService"

    const-string v3, "changePasswordIfPasswordHasExpired(): password has expired, rising event CSEVENT_RESET_PWD_TIMEOUT"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    .end local v0           #tempState:Lcom/sec/knox/container/constants/CSState;
    :goto_0
    return v1

    .line 3768
    .restart local v0       #tempState:Lcom/sec/knox/container/constants/CSState;
    :cond_1
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordIfPasswordHasExpired(): state couldn\'t be changed. Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    .end local v0           #tempState:Lcom/sec/knox/container/constants/CSState;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkExistence(I)Z
    .locals 3
    .parameter "containerId"

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2833
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id matches. Returning true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    const/4 v0, 0x1

    .line 2838
    :goto_0
    return v0

    .line 2836
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExistence: Container id doesnt match. Returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIfAdminHasBeenRemoved()Z
    .locals 7

    .prologue
    .line 955
    const-string v5, "EnterpriseContainerService"

    const-string v6, "checkIfAdminHasBeenRemoved()"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v1, 0x0

    .line 957
    .local v1, adminWasRemoved:Z
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 959
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 961
    .local v2, currentActiveAdminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 962
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 963
    .local v0, admin:Landroid/content/ComponentName;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 964
    const/4 v1, 0x1

    .line 965
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->OnAdminRemoval(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 970
    .end local v0           #admin:Landroid/content/ComponentName;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_2

    .line 971
    check-cast v2, Ljava/util/ArrayList;

    .end local v2           #currentActiveAdminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iput-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 976
    :goto_1
    return v1

    .line 973
    .restart local v2       #currentActiveAdminList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private checkIfContainerizedApp(II)Z
    .locals 8
    .parameter "uid"
    .parameter "cid"

    .prologue
    .line 287
    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    .line 288
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, packageNames:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 290
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p2}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v6

    .line 292
    .local v6, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 293
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 294
    .local v4, packageName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 295
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, installer:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "com.sec.knox.containeragent"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 297
    const/4 v7, 0x1

    .line 304
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #installer:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageNames:[Ljava/lang/String;
    .end local v6           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_1
    return v7

    .line 293
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #packageNames:[Ljava/lang/String;
    .restart local v6       #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageNames:[Ljava/lang/String;
    .end local v6           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private checkIfDPMAdmin()Z
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 341
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 342
    const/4 v1, 0x1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfMDMAdmin()Z
    .locals 3

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 351
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 357
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkIfUninstallWhitelistPackage(I)Z
    .locals 12
    .parameter "uid"

    .prologue
    .line 324
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, packageNames:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 326
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 327
    .local v7, packageName:Ljava/lang/String;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->UNINSTALL_WHITELIST:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 328
    .local v6, p:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 329
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches uninstall whitelisted package uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v9, 0x1

    .line 336
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_2
    return v9

    .line 327
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #p:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    .end local v6           #p:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 336
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #packageName:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private checkIfWhitelistedApp(I)Z
    .locals 12
    .parameter "uid"

    .prologue
    .line 308
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, packageNames:[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 310
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 311
    .local v7, packageName:Ljava/lang/String;
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService;->WHITELISTED_APPS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 312
    .local v6, p:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 313
    const-string v9, "EnterpriseContainerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName matches whitelisted app uid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v9, 0x1

    .line 320
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_2
    return v9

    .line 311
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #p:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v6           #p:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 320
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #packageName:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private cleanUpBinder()V
    .locals 10

    .prologue
    .line 1229
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mIBinderMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1230
    .local v4, mIBinderMapSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/IBinder;>;>;"
    if-eqz v4, :cond_1

    .line 1231
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1232
    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1234
    .local v5, pairs:Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1235
    .local v6, req:Ljava/lang/Integer;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1236
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1237
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 1238
    .local v1, deathRecipient:Landroid/os/IBinder$DeathRecipient;
    if-eqz v1, :cond_0

    .line 1240
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1251
    .end local v1           #deathRecipient:Landroid/os/IBinder$DeathRecipient;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDeathCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1241
    .restart local v1       #deathRecipient:Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v2

    .line 1242
    .local v2, ex:Ljava/util/NoSuchElementException;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. Binder disconnect recipient is not found. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1245
    .end local v2           #ex:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 1246
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder.unlinkToDeath Failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1255
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #deathRecipient:Landroid/os/IBinder$DeathRecipient;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v5           #pairs:Ljava/util/Map$Entry;
    .end local v6           #req:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private cleanupContainer(I)V
    .locals 3
    .parameter "containerId"

    .prologue
    .line 2812
    const-string v0, "EnterpriseContainerService"

    const-string v1, "cleanupContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2819
    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    const-string v0, "EnterpriseContainerService"

    const-string v1, "After Deleting the .container_1 forcibly "

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    .line 2824
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(I)Z

    .line 2825
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->removeContainer(Landroid/content/Context;I)Z

    .line 2826
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->removeContainer(I)Z

    .line 2827
    return-void
.end method

.method private createContainerDataDir()V
    .locals 5

    .prologue
    .line 494
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, containerDataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Creating Container data directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v0           #containerDataDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create container data directory exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized decrementWakeLock()V
    .locals 3

    .prologue
    .line 4036
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    if-lez v0, :cond_0

    .line 4038
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 4040
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after decrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4041
    monitor-exit p0

    return-void

    .line 4036
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doBootCompleteTaks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 607
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    return-void
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .locals 1
    .parameter "securitySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(II)I
    .locals 4
    .parameter "securitySpec"
    .parameter "cid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 373
    .local v0, uid:I
    iget-boolean v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service not initialized yet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 401
    :cond_1
    return v0

    .line 379
    :cond_2
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 383
    :cond_3
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 384
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfWhitelistedApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    :cond_4
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 389
    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    :cond_5
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 394
    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfDPMAdmin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    :cond_6
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 400
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to access Container service API :uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V
    .locals 3
    .parameter "uid"
    .parameter "cid"
    .parameter "permission"

    .prologue
    .line 413
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access Container service API :uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    return-void
.end method

.method private getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 3778
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3779
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3780
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3785
    .local v0, appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 3786
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3787
    .local v4, pi:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3788
    .local v5, strPackageName:Ljava/lang/String;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3789
    .local v6, strTargetActivity:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 3796
    .end local v0           #appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pi:Landroid/content/pm/ResolveInfo;
    .end local v5           #strPackageName:Ljava/lang/String;
    .end local v6           #strTargetActivity:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 3785
    .restart local v0       #appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pi:Landroid/content/pm/ResolveInfo;
    .restart local v5       #strPackageName:Ljava/lang/String;
    .restart local v6       #strTargetActivity:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3793
    .end local v0           #appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pi:Landroid/content/pm/ResolveInfo;
    .end local v5           #strPackageName:Ljava/lang/String;
    .end local v6           #strTargetActivity:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3794
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not start app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move-object v6, v7

    .line 3796
    goto :goto_1
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    .line 687
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mAppService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateForPackage(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 13
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 3712
    const/4 v8, 0x0

    .line 3713
    .local v8, packageCertificate:Ljava/security/cert/X509Certificate;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3714
    .local v7, pManager:Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_1

    .line 3715
    const/4 v6, 0x0

    .line 3716
    .local v6, pInfo:Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 3718
    .local v4, input:Ljava/io/InputStream;
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 3719
    if-eqz v6, :cond_0

    .line 3720
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 3721
    .local v9, packageSign:[Landroid/content/pm/Signature;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 3722
    .local v1, byteSignature:[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3723
    .end local v4           #input:Ljava/io/InputStream;
    .local v5, input:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 3724
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 3725
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 3734
    .end local v1           #byteSignature:[B
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v5           #input:Ljava/io/InputStream;
    .end local v9           #packageSign:[Landroid/content/pm/Signature;
    .restart local v4       #input:Ljava/io/InputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 3735
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3739
    .end local v4           #input:Ljava/io/InputStream;
    .end local v6           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v8

    .line 3727
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v6       #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 3728
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    :try_start_2
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Package Name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    if-eqz v4, :cond_1

    goto :goto_0

    .line 3729
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 3730
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    if-eqz v4, :cond_1

    goto :goto_0

    .line 3731
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v3

    .line 3732
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    const-string v10, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3734
    if-eqz v4, :cond_1

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v4, :cond_2

    .line 3735
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3734
    :cond_2
    throw v10

    .end local v4           #input:Ljava/io/InputStream;
    .restart local v1       #byteSignature:[B
    .restart local v2       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v5       #input:Ljava/io/InputStream;
    .restart local v9       #packageSign:[Landroid/content/pm/Signature;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    goto :goto_4

    .line 3731
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v5       #input:Ljava/io/InputStream;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    goto :goto_3

    .line 3729
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v5       #input:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    goto :goto_2

    .line 3727
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v5       #input:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 10
    .parameter "processResult"

    .prologue
    .line 2120
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 2121
    .local v4, resultBuffer:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2122
    .local v5, resultBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2124
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2126
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2129
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2130
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommandResult : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2133
    if-eqz v1, :cond_0

    .line 2134
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2140
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 2133
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 2134
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 2139
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 2132
    .end local v3           #line:Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 2133
    :goto_4
    if-eqz v1, :cond_3

    .line 2134
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2132
    :cond_3
    :goto_5
    throw v6

    .line 2136
    :catch_1
    move-exception v0

    .line 2137
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2136
    :catch_2
    move-exception v0

    .line 2137
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2136
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2137
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2132
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_4

    .line 2129
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private getContainerIdFromAppId(I)I
    .locals 10
    .parameter "appUid"

    .prologue
    .line 3544
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 3545
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache()Ljava/util/HashMap;

    move-result-object v1

    .line 3547
    .local v1, cacheInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 3548
    .local v5, names:[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v9, v5

    if-lez v9, :cond_2

    .line 3549
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 3552
    .local v6, packageName:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3553
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .line 3554
    .local v7, pkgInfo:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    if-nez v7, :cond_1

    .line 3549
    .end local v7           #pkgInfo:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3557
    .restart local v7       #pkgInfo:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :cond_1
    invoke-virtual {v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v2

    .line 3568
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #pkgInfo:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_1
    return v2

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getContainerStatus(I)I
    .locals 5
    .parameter "containerId"

    .prologue
    .line 3253
    const/4 v0, -0x1

    .line 3255
    .local v0, result:I
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 3256
    .local v1, state:Lcom/sec/knox/container/constants/CSState;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v0

    .line 3258
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Returning State :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    return v0
.end method

.method private getContainerTypeInternal(I)I
    .locals 2
    .parameter "containerId"

    .prologue
    .line 3743
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    .line 3744
    .local v0, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v0, :cond_0

    .line 3745
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v1

    .line 3747
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .locals 2

    .prologue
    .line 694
    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 696
    .local v0, dapService:Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    return-object v0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1015
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, pdaVersion:Ljava/lang/String;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .locals 3
    .parameter "containerId"

    .prologue
    .line 430
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v1

    .line 431
    .local v1, mKEDM:Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "containerId"
    .parameter "packageName"

    .prologue
    .line 3630
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    .line 3631
    .local v6, stringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 3632
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getOriginalPackageName start"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3634
    .local v1, lPackageName:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3635
    const-string v7, "sec_container_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3636
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContainerizedPackageName Matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3638
    .local v2, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3639
    .local v5, str:Ljava/lang/StringBuilder;
    const-string v7, "sec_container_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3641
    .local v3, prefixLen:I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3642
    .local v4, returnedString:Ljava/lang/String;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Returned string is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lPackageName:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #prefixLen:I
    .end local v4           #returnedString:Ljava/lang/String;
    .end local v5           #str:Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #lPackageName:Ljava/lang/String;
    :cond_1
    move-object v4, v1

    .line 3646
    goto :goto_0

    .line 3650
    .end local v1           #lPackageName:Ljava/lang/String;
    :cond_2
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName Nothing matched"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3652
    :cond_3
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getContainerizedPackageName is null"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOriginalPackageNamesInternal(I)Ljava/util/List;
    .locals 10
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3659
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v7

    .line 3660
    .local v7, stringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3661
    .local v4, returnPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 3662
    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageName start"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3664
    .local v1, lPackageName:Ljava/lang/String;
    const-string v8, "sec_container_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3667
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3668
    .local v2, length:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3669
    .local v6, str:Ljava/lang/StringBuilder;
    const-string v8, "sec_container_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3671
    .local v3, prefixLen:I
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3673
    .local v5, returnString:Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3676
    .end local v2           #length:I
    .end local v3           #prefixLen:I
    .end local v5           #returnString:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3681
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lPackageName:Ljava/lang/String;
    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "getOriginalPackageNamesInternal is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    const/4 v4, 0x0

    .end local v4           #returnPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v4
.end method

.method private getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I
    .locals 3
    .parameter "state"

    .prologue
    .line 3202
    const/4 v0, -0x1

    .line 3203
    .local v0, result:I
    sget-object v1, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3249
    :goto_0
    :pswitch_0
    return v0

    .line 3205
    :pswitch_1
    const/4 v0, -0x1

    .line 3206
    goto :goto_0

    .line 3208
    :pswitch_2
    const/16 v0, 0x5d

    .line 3209
    goto :goto_0

    .line 3211
    :pswitch_3
    const/16 v0, 0x5b

    .line 3212
    goto :goto_0

    .line 3215
    :pswitch_4
    const/16 v0, 0x5f

    .line 3216
    goto :goto_0

    .line 3223
    :pswitch_5
    const/16 v0, 0x5a

    .line 3224
    goto :goto_0

    .line 3226
    :pswitch_6
    const/16 v0, 0x52

    .line 3227
    goto :goto_0

    .line 3229
    :pswitch_7
    const/16 v0, 0x53

    .line 3230
    goto :goto_0

    .line 3232
    :pswitch_8
    const/16 v0, 0x62

    .line 3233
    goto :goto_0

    .line 3235
    :pswitch_9
    const/16 v0, 0x5e

    .line 3236
    goto :goto_0

    .line 3238
    :pswitch_a
    const/16 v0, 0x60

    .line 3239
    goto :goto_0

    .line 3242
    :pswitch_b
    const/16 v0, 0x61

    .line 3243
    goto :goto_0

    .line 3203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 3280
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-nez v0, :cond_0

    .line 679
    const-string v0, "enterprise_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    return-object v0
.end method

.method private declared-synchronized getWakeLockCounter()I
    .locals 1

    .prologue
    .line 4044
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementWakeLock()V
    .locals 3

    .prologue
    .line 4030
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    .line 4032
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock after increment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4033
    monitor-exit p0

    return-void

    .line 4030
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initialiseContainer()V
    .locals 2

    .prologue
    .line 701
    const-string v0, "EnterpriseContainerService"

    const-string v1, "initialiseContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "ctl.start"

    const-string v1, "containersetup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method private initializeDPMActiveAdminList()V
    .locals 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 603
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    .line 604
    return-void
.end method

.method private installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .locals 9
    .parameter "apkFilePath"
    .parameter "containerId"

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x66

    .line 2364
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installPackageInternal() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const/16 v2, 0x12

    .line 2367
    .local v2, installFlags:I
    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    invoke-direct {v3, p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2369
    .local v3, obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2370
    .local v0, apkFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2371
    const/4 v4, -0x2

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2372
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Invalid Apk. installation failed"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    .end local v0           #apkFile:Ljava/io/File;
    :goto_0
    return-object v3

    .line 2376
    .restart local v0       #apkFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->init()V

    .line 2377
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "com.sec.knox.containeragent"

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 2379
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2380
    :goto_1
    :try_start_1
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 2382
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2383
    :catch_0
    move-exception v1

    .line 2384
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException during Package installation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const/16 v4, -0x66

    iput v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    .line 2387
    monitor-exit v3

    goto :goto_0

    .line 2390
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2398
    .end local v0           #apkFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 2399
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during Package installation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    iput v7, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    goto :goto_0

    .line 2390
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #apkFile:Ljava/io/File;
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2391
    :try_start_6
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z

    if-ne v4, v8, :cond_2

    .line 2392
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Package installation failed due to internal error. Retry but before that sleep for 1 sec"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2396
    :cond_2
    iget-boolean v4, v3, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->retry:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eq v4, v8, :cond_0

    goto :goto_0
.end method

.method private isContainerPackageInstallable(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    .line 4475
    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPackageInstallable()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 4477
    .local v0, currentState:Lcom/sec/knox/container/constants/CSState;
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4495
    :goto_0
    :pswitch_0
    return v1

    .line 4483
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isContainerPartition(I)Z
    .locals 5
    .parameter "containerId"

    .prologue
    .line 506
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, containerPart:Ljava/io/File;
    const/4 v1, 0x0

    .line 509
    .local v1, ret:Z
    if-nez v0, :cond_0

    .line 510
    const-string v2, "EnterpriseContainerService"

    const-string v3, "isContainerPartition : File object not created"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v2, 0x0

    .line 520
    :goto_0
    return v2

    .line 514
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 517
    if-nez v1, :cond_1

    .line 518
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not existing.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 520
    goto :goto_0
.end method

.method private isPackageInInstallWhiteList(II)Z
    .locals 11
    .parameter "containerId"
    .parameter "callingUid"

    .prologue
    .line 3817
    const-string v8, "EnterpriseContainerService"

    const-string v9, "isPackageInInstallWhiteList()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getKnoxApplicationPolicy(I)Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v4

    .line 3821
    .local v4, mAppPolicy:Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    if-eqz v4, :cond_1

    .line 3822
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 3823
    .local v6, packageNames:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 3824
    .local v7, pkgName:Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3825
    .local v5, orgPkgName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->isPackageInInstallWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3826
    const/4 v8, 0x1

    .line 3835
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mAppPolicy:Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .end local v5           #orgPkgName:Ljava/lang/String;
    .end local v6           #packageNames:[Ljava/lang/String;
    .end local v7           #pkgName:Ljava/lang/String;
    :goto_1
    return v8

    .line 3823
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #mAppPolicy:Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    .restart local v5       #orgPkgName:Ljava/lang/String;
    .restart local v6       #packageNames:[Ljava/lang/String;
    .restart local v7       #pkgName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3830
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #orgPkgName:Ljava/lang/String;
    .end local v6           #packageNames:[Ljava/lang/String;
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_1
    const-string v8, "EnterpriseContainerService"

    const-string v9, "ContainerApplicationPolicy is null"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3835
    .end local v4           #mAppPolicy:Lcom/sec/enterprise/knox/ContainerApplicationPolicy;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3832
    :catch_0
    move-exception v1

    .line 3833
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in isPackageInInstallWhiteList(). "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isPasswordForbiddenInternal(ILjava/lang/String;Z)Z
    .locals 7
    .parameter "containerId"
    .parameter "password"
    .parameter "allowAll"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2873
    const-string v4, "EnterpriseContainerService"

    const-string v5, "isPasswordForbiddenInternal()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    const/4 v1, 0x0

    .line 2876
    .local v1, result:Z
    const-wide/16 v2, 0x0

    .line 2877
    .local v2, token:J
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 2880
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2882
    :cond_2
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v4, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v1

    .line 2883
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 2884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2893
    :cond_3
    :goto_0
    return v1

    .line 2886
    :catch_0
    move-exception v0

    .line 2887
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() allowAll= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " API Permission is not granted for Non-MDM and Non-DPM API Calls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    const-string v4, "EnterpriseContainerService"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2890
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2891
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPasswordForbidden() Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private killTimer(I)V
    .locals 1
    .parameter "containerId"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->killTimer(I)V

    .line 1066
    return-void
.end method

.method private launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 3801
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3802
    .local v2, mIntent:Landroid/content/Intent;
    const-string v3, "sec_container_1.android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3803
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3805
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3806
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3807
    const/4 v3, 0x1

    .line 3813
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #mIntent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 3808
    :catch_0
    move-exception v1

    .line 3809
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 3810
    :catch_1
    move-exception v1

    .line 3811
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not start app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadPasswordInfoToCache(I)V
    .locals 10
    .parameter "containerId"

    .prologue
    const/4 v9, 0x0

    .line 1034
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v3

    .line 1035
    .local v3, passwordExpirationDate:J
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v5

    .line 1037
    .local v5, passwordExpirationTimeout:J
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p1}, Lcom/sec/knox/container/manager/StateManager;->getFailedPasswordAttempts(Landroid/content/Context;I)I

    move-result v0

    .line 1038
    .local v0, failedPasswordAttempts:I
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v7, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 1040
    .local v1, maximumTimeToLock:J
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update: Password Info: passwordExpirationDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", passwordExpirationTimeout = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failedPasswordAttempts = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maximumTimeToLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationDate(IJ)Z

    .line 1046
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->setPasswordExpirationTimeout(IJ)Z

    .line 1047
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v0}, Lcom/sec/knox/container/manager/StateManager;->setFailedPasswordAttempts(II)Z

    .line 1048
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1, v1, v2}, Lcom/sec/knox/container/manager/StateManager;->setMaximumTimeToLock(IJ)Z

    .line 1049
    return-void
.end method

.method private lockContainerInternal(I)Z
    .locals 8
    .parameter "containerId"

    .prologue
    const/4 v4, 0x1

    .line 1101
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_LOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 1103
    .local v1, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    sget-object v6, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v6}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1104
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locking for container"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-wide/16 v2, 0x0

    .line 1106
    .local v2, token:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1107
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 1108
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 1110
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V

    .line 1112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    new-instance v0, Landroid/content/Intent;

    const-string v5, "enterprise.container.locked"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, lockContainerCompleted:Landroid/content/Intent;
    const-string v5, "containerid"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1116
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1119
    .end local v0           #lockContainerCompleted:Landroid/content/Intent;
    .end local v2           #token:J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)Z
    .locals 22
    .parameter "container"
    .parameter "containerId"
    .parameter "state"
    .parameter "requestId"

    .prologue
    .line 2588
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Mount()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/.container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2594
    .local v17, srcPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2595
    .local v12, mountPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/container/.sdcontainer_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2596
    .local v16, sdSrcPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt_1/sdcard_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2597
    .local v15, sdMountPath:Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 2600
    .local v20, token:J
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2601
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2602
    .local v18, srcPathFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2603
    .local v13, mountPathFile:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2604
    .local v19, srcSDPathFile:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2606
    .local v14, mountSDPathFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2608
    :cond_0
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: One or more source/mount path does not exist."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    const/4 v3, 0x0

    .line 2639
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_1

    .line 2640
    .end local v13           #mountPathFile:Ljava/io/File;
    .end local v14           #mountSDPathFile:Ljava/io/File;
    .end local v18           #srcPathFile:Ljava/io/File;
    .end local v19           #srcSDPathFile:Ljava/io/File;
    :goto_0
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2643
    :cond_1
    :goto_1
    return v3

    .line 2612
    .restart local v13       #mountPathFile:Ljava/io/File;
    .restart local v14       #mountSDPathFile:Ljava/io/File;
    .restart local v18       #srcPathFile:Ljava/io/File;
    .restart local v19       #srcSDPathFile:Ljava/io/File;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2613
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist, so creating it ...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V

    .line 2618
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 2619
    .local v6, newPassword:Ljava/lang/String;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path to mount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    new-instance v2, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 2623
    .local v2, encryptCallback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    if-lez p4, :cond_4

    .line 2624
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2626
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, v17

    move-object v5, v12

    move/from16 v9, p2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    .line 2631
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Error create container: DirEncryptionManager Primary mount failed"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2633
    const/4 v3, 0x0

    .line 2639
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 2635
    .end local v2           #encryptCallback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .end local v6           #newPassword:Ljava/lang/String;
    .end local v13           #mountPathFile:Ljava/io/File;
    .end local v14           #mountSDPathFile:Ljava/io/File;
    .end local v18           #srcPathFile:Ljava/io/File;
    .end local v19           #srcSDPathFile:Ljava/io/File;
    :catch_0
    move-exception v11

    .line 2636
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EnterpriseContainerService"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2637
    const/4 v3, 0x0

    .line 2639
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_5

    .line 2640
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2639
    :cond_5
    throw v3

    .restart local v2       #encryptCallback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    .restart local v6       #newPassword:Ljava/lang/String;
    .restart local v13       #mountPathFile:Ljava/io/File;
    .restart local v14       #mountSDPathFile:Ljava/io/File;
    .restart local v18       #srcPathFile:Ljava/io/File;
    .restart local v19       #srcSDPathFile:Ljava/io/File;
    :cond_6
    const-wide/16 v3, 0x0

    cmp-long v3, v20, v3

    if-eqz v3, :cond_7

    .line 2640
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2643
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method private registerReceiverPerContainer(Ljava/lang/String;)V
    .locals 5
    .parameter "intentSting"

    .prologue
    .line 637
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v0, filter:Landroid/content/IntentFilter;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 641
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registering action >> sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    return-void
.end method

.method private registerReciever()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 648
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-direct {v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 650
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v1, "com.sec.knox.container.INTENT_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v1, "enterprise.container.INTENT_ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDPMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 660
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 663
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mBroadCastReciever:Lcom/sec/knox/container/EnterpriseContainerService$EnterpriseContainerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_CREATED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    .line 667
    const-string v1, "android.intent.action.EMAIL_ACCOUNT_DELETED_INTENT"

    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->registerReceiverPerContainer(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private declared-synchronized releaseLock()V
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "EnterpriseContainerService"

    const-string v1, "---------------------->releasing wake lock<---------------------"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeContainerActiveAdmin(I)V
    .locals 13
    .parameter "cid"

    .prologue
    .line 3572
    const-string v10, "EnterpriseContainerService"

    const-string v11, "removeContainerActiveAdmin()"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3575
    .local v8, token:J
    :try_start_0
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v10, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v6

    .line 3576
    .local v6, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 3578
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 3580
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_2

    .line 3581
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3582
    .local v7, removeAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 3583
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3584
    .local v5, packageName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3586
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeActiveAdmin called with ComponentName= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3589
    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3605
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #removeAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v1

    .line 3606
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occured while removing admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3608
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3610
    return-void

    .line 3593
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v6       #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #removeAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3594
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-nez v10, :cond_4

    .line 3595
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    .line 3597
    :cond_4
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3608
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v6           #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #removeAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 3599
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v6       #packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #removeAdminList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_5
    :try_start_3
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeContainerActiveAdmin: no admins found in Container Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .parameter "containerId"
    .parameter "callback"

    .prologue
    .line 2713
    const-string v2, "EnterpriseContainerService"

    const-string v3, " removeContainerHelper()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 2715
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 2717
    .local v1, transitState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 2720
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerActiveAdmin(I)V

    .line 2723
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Updating DB ContainerStatus: 94"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2728
    .local v0, containerRemoveProgress:Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2729
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2731
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Putting the call back in the map"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    if-eqz p2, :cond_0

    .line 2733
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 2735
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2736
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 2738
    :cond_2
    const/4 v2, 0x1

    .line 2740
    .end local v0           #containerRemoveProgress:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeContainerNow(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 21
    .parameter "containerId"
    .parameter "callback"

    .prologue
    .line 2745
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeContainerNow(): id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    .local v5, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "framework.pkgName.key"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2750
    .local v12, frameworkPackageList:Ljava/lang/String;
    if-nez v12, :cond_1

    const/4 v13, 0x0

    .line 2752
    .local v13, frameworkPackages:[Ljava/lang/String;
    :goto_0
    if-eqz v13, :cond_2

    .line 2753
    move-object v8, v13

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v14, v8, v15

    .line 2754
    .local v14, frameworkPkg:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2755
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2750
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #frameworkPackages:[Ljava/lang/String;
    .end local v14           #frameworkPkg:Ljava/lang/String;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_1
    const-string v2, ";"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 2759
    .restart local v13       #frameworkPackages:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    if-nez v2, :cond_4

    .line 2808
    :cond_3
    :goto_2
    return-void

    .line 2762
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    .line 2763
    .local v10, containerPackageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2764
    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2769
    :cond_5
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 2770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v11

    .line 2771
    .local v11, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v11, :cond_3

    .line 2772
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v7

    .line 2773
    .local v7, adminId:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2774
    .local v19, token:J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationUninstallationDisabledBySystem to false admin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2776
    .local v18, packageName:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2777
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v7, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 2779
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationUninstallationEnabled  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2785
    .end local v18           #packageName:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2786
    const-string v2, "EnterpriseContainerService"

    const-string v3, "clearing BL/WL account settings for various types."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceAccountPolicy()Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLBySystem(I[Ljava/lang/String;)Z

    .line 2791
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 2792
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2793
    invoke-direct/range {p0 .. p0}, Lcom/sec/knox/container/EnterpriseContainerService;->resetWakeLock()V

    .line 2794
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Start the Uninstaller Thread"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 2797
    .local v1, unInstaller:Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    invoke-virtual {v1}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    goto/16 :goto_2

    .line 2800
    .end local v1           #unInstaller:Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    .end local v7           #adminId:I
    .end local v11           #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #token:J
    :cond_9
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2801
    .local v9, bundle:Landroid/os/Bundle;
    const-string v2, "containerid"

    move/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 2805
    .local v17, msg:Landroid/os/Message;
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Uninstaller Thread msg to Handler"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method private removeUntrustedContainerApps(I)V
    .locals 12
    .parameter "containerId"

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2096
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    invoke-virtual {v11, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 2097
    .local v6, allPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    .local v4, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 2099
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2100
    .local v10, packageName:Ljava/lang/String;
    if-eqz v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2101
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2102
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Untrusted Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be uninstalled before container creation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2107
    .end local v7           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2109
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 2111
    .local v0, packageUninstaller:Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->start()V

    .line 2112
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    .end local v0           #packageUninstaller:Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
    :cond_2
    :goto_1
    return-void

    .line 2114
    :catch_0
    move-exception v8

    .line 2115
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v1, "EnterpriseContainerService"

    const-string v2, "UninstallPackageThread interrupted"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized resetWakeLock()V
    .locals 3

    .prologue
    .line 4025
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refCountWakeLock before reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->refCountWakeLock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4027
    monitor-exit p0

    return-void

    .line 4025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleTimer(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "containerId"

    .prologue
    .line 1052
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 1053
    return-void
.end method

.method private scheduleTimer(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "containerId"
    .parameter "forceStart"

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimer(Landroid/content/Context;IZ)V

    .line 1062
    :goto_0
    return-void

    .line 1059
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On scheduleTimer, WakeLockCounter is not 0, it is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerCreationIntent(I)V
    .locals 3
    .parameter "containerId"

    .prologue
    .line 1093
    const-string v1, "EnterpriseContainerService"

    const-string v2, "sending sendContainerCreationIntent"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.created.nonactive"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, sendContainerCreationIntent:Landroid/content/Intent;
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1097
    return-void
.end method

.method private sendContainerSetupSuccessMessage(I)V
    .locals 5
    .parameter "containerId"

    .prologue
    const/4 v4, 0x0

    .line 1077
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1078
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xc

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1081
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1082
    return-void
.end method

.method private sendNewContainerNotificationRequest(III)V
    .locals 5
    .parameter "containerId"
    .parameter "admin"
    .parameter "containerRequestId"

    .prologue
    .line 715
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNewContainerNotificationRequest() ReqId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent.createcontainer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 721
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "admin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    const-string v2, "requestid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 724
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 726
    return-void
.end method

.method private sendRemountSuccessMessageToHandler(ILjava/lang/String;I)V
    .locals 6
    .parameter "containerId"
    .parameter "password"
    .parameter "requestId"

    .prologue
    const/4 v5, 0x0

    .line 4236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4237
    .local v0, message:Landroid/os/Bundle;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remount success for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4239
    const-string v2, "rid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4241
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xd

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4243
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4244
    return-void
.end method

.method private setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "firmwareVersion"

    .prologue
    .line 5711
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setContainerFirmwareVersionToCacheAndDB()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5713
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5716
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating firmware Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFirmwareVersion(ILjava/lang/String;)Z

    .line 5718
    const/4 v1, 0x1

    .line 5720
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    .locals 3
    .parameter "container"
    .parameter "containerId"

    .prologue
    const/4 v0, 0x0

    .line 2703
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2704
    const-string v0, "EnterpriseContainerService"

    const-string v1, "setupContainer() Mount Succes"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const/4 v0, 0x1

    .line 2708
    :goto_0
    return v0

    .line 2707
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setupContainer() Mount Failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupContainerCreationFailureMessage(I)V
    .locals 5
    .parameter "containerId"

    .prologue
    const/4 v4, 0x0

    .line 1069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1071
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1073
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1074
    return-void
.end method

.method private setupContainerRemountFailureMessage(I)V
    .locals 5
    .parameter "containerId"

    .prologue
    const/4 v4, 0x0

    .line 1085
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1086
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    const/16 v3, 0xb

    invoke-static {v2, v3, v4, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1089
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    invoke-virtual {v2, v1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1090
    return-void
.end method

.method private startContainerEventsRelayManager()V
    .locals 4

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.knox.eventsmanager.ContainerEventsRelayManager"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 442
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Failed to start ContainerEventsRelayManager service"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not have permission to start service ContainerEventsRelayManager. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while starting ContainerEventsRelayManager service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "version"

    .prologue
    const/16 v4, 0x5f

    .line 1023
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1026
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0

    .line 1028
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private unlockContainerInternal(I)Z
    .locals 5
    .parameter "containerId"

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNLOCK_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 1125
    .local v0, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 1127
    const-string v2, "EnterpriseContainerService"

    const-string v3, "unlockContainer API: Container State = CONTAINER_INACTIVE"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "enterprise.container.unlocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v1, unlockContainerCompleted:Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1135
    const/4 v2, 0x1

    .end local v1           #unlockContainerCompleted:Landroid/content/Intent;
    :goto_0
    return v2

    .line 1132
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Container is not locked so no unlock"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unmount(III)V
    .locals 11
    .parameter "containerId"
    .parameter "whichOne"
    .parameter "uninstallOrStop"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 2654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2655
    .local v9, mountPath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt_1/sdcard_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2656
    .local v10, sdMountPath:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-ne p2, v7, :cond_1

    .line 2657
    :cond_0
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_PRIMARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    :cond_1
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const/4 v2, 0x4

    const-string v4, ""

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    invoke-virtual {v6, v9, v0, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 2665
    if-eq p2, v5, :cond_2

    if-ne p2, v7, :cond_3

    .line 2666
    :cond_2
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerunmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNMOUNT_SECONDARY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    :cond_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;

    new-instance v3, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    const-string v7, ""

    move-object v4, p0

    move v6, p1

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    invoke-virtual {v0, v10, v3, p3, p1}, Landroid/dirEncryption/DirEncryptionManager;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    .line 2672
    return-void
.end method

.method private updateContainerEmailId(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "containerId"
    .parameter "userName"
    .parameter "domain"
    .parameter "action"

    .prologue
    .line 2844
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContainerEmailId() with action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    const/4 v1, 0x0

    .line 2846
    .local v1, emailId:Ljava/lang/String;
    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_0

    .line 2847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2851
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2852
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "email"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2855
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending email update intent for user-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", domain-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", container-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/knox/container/manager/StateManager;->updateEmailId(ILjava/lang/String;)Z

    .line 2858
    const-string v2, "sys.samsung.knox.email"

    .line 2859
    .local v2, emailProp:Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    new-instance v3, Landroid/content/Intent;

    sget v4, Lcom/sec/knox/container/EnterpriseContainerService;->ADD_EMAILID:I

    if-ne p4, v4, :cond_1

    const-string v4, "enterprise.container.email.added"

    :goto_1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2862
    .local v3, emailUpdated:Landroid/content/Intent;
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2863
    const-string v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2864
    const-string v4, "domain"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2865
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2866
    const/4 v4, 0x1

    .line 2868
    .end local v2           #emailProp:Ljava/lang/String;
    .end local v3           #emailUpdated:Landroid/content/Intent;
    :goto_2
    return v4

    .line 2849
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 2860
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v2       #emailProp:Ljava/lang/String;
    :cond_1
    const-string v4, "enterprise.container.email.removed"

    goto :goto_1

    .line 2868
    .end local v2           #emailProp:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I
    .locals 24
    .parameter "containerId"
    .parameter "oldPassword"
    .parameter "password"

    .prologue
    .line 2897
    const-string v21, "EnterpriseContainerService"

    const-string v22, "validatePasswordInternal()"

    invoke-static/range {v21 .. v22}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2899
    :cond_0
    const/16 v21, 0x33

    .line 3075
    :goto_0
    return v21

    .line 2902
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 2906
    const/16 v21, 0x45

    goto :goto_0

    .line 2908
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordContainsValidChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2909
    const/16 v21, 0x46

    goto :goto_0

    .line 2911
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 2912
    const/16 v21, 0x44

    goto :goto_0

    .line 2914
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkOldPasswordHistory(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2919
    :cond_5
    const/16 v21, 0x41

    goto :goto_0

    .line 2921
    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 2924
    const/16 v21, 0x42

    goto/16 :goto_0

    .line 2926
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2927
    const/16 v21, 0x43

    goto/16 :goto_0

    .line 2930
    :cond_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2932
    const/16 v21, 0x3c

    goto/16 :goto_0

    .line 2935
    :cond_9
    const/4 v7, 0x0

    .line 2936
    .local v7, letters:I
    const/16 v20, 0x0

    .line 2937
    .local v20, uppercase:I
    const/4 v8, 0x0

    .line 2938
    .local v8, lowercase:I
    const/16 v16, 0x0

    .line 2939
    .local v16, numbers:I
    const/16 v19, 0x0

    .line 2940
    .local v19, symbols:I
    const/4 v15, 0x0

    .line 2941
    .local v15, nonletter:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_d

    .line 2942
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2943
    .local v4, c:C
    const/16 v21, 0x41

    move/from16 v0, v21

    if-lt v4, v0, :cond_a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-gt v4, v0, :cond_a

    .line 2944
    add-int/lit8 v7, v7, 0x1

    .line 2945
    add-int/lit8 v20, v20, 0x1

    .line 2941
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2946
    :cond_a
    const/16 v21, 0x61

    move/from16 v0, v21

    if-lt v4, v0, :cond_b

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-gt v4, v0, :cond_b

    .line 2947
    add-int/lit8 v7, v7, 0x1

    .line 2948
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2949
    :cond_b
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v4, v0, :cond_c

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v4, v0, :cond_c

    .line 2950
    add-int/lit8 v16, v16, 0x1

    .line 2951
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2953
    :cond_c
    add-int/lit8 v19, v19, 0x1

    .line 2954
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2958
    .end local v4           #c:C
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v17

    .line 2959
    .local v17, quality:I
    if-eqz v17, :cond_11

    .line 2960
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v18

    .line 2961
    .local v18, realQuality:I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    const/high16 v21, 0x6

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 2966
    const/high16 v21, 0x5

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    .line 2969
    .local v9, neededLetters:I
    if-ge v7, v9, :cond_e

    .line 2974
    const/16 v21, 0x35

    goto/16 :goto_0

    .line 2976
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 2978
    .local v12, neededNumbers:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_f

    .line 2985
    const/16 v21, 0x36

    goto/16 :goto_0

    .line 2988
    .end local v9           #neededLetters:I
    .end local v12           #neededNumbers:I
    :cond_f
    const/16 v21, 0x33

    goto/16 :goto_0

    .line 2990
    :cond_10
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2993
    .end local v18           #realQuality:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v6

    .line 2994
    .local v6, length:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v6, :cond_12

    .line 2998
    const/16 v21, 0x34

    goto/16 :goto_0

    .line 3001
    :cond_12
    const/high16 v21, 0x6

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v9

    .line 3003
    .restart local v9       #neededLetters:I
    if-ge v7, v9, :cond_13

    .line 3008
    const/16 v21, 0x35

    goto/16 :goto_0

    .line 3010
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 3011
    .restart local v12       #neededNumbers:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_14

    .line 3016
    const/16 v21, 0x36

    goto/16 :goto_0

    .line 3018
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v10

    .line 3019
    .local v10, neededLowerCase:I
    if-ge v8, v10, :cond_15

    .line 3024
    const/16 v21, 0x37

    goto/16 :goto_0

    .line 3026
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v14

    .line 3027
    .local v14, neededUpperCase:I
    move/from16 v0, v20

    if-ge v0, v14, :cond_16

    .line 3032
    const/16 v21, 0x38

    goto/16 :goto_0

    .line 3034
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v13

    .line 3035
    .local v13, neededSymbols:I
    move/from16 v0, v19

    if-ge v0, v13, :cond_17

    .line 3040
    const/16 v21, 0x39

    goto/16 :goto_0

    .line 3042
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v11

    .line 3043
    .local v11, neededNonLetter:I
    if-ge v15, v11, :cond_18

    .line 3049
    const/16 v21, 0x3a

    goto/16 :goto_0

    .line 3053
    .end local v9           #neededLetters:I
    .end local v10           #neededLowerCase:I
    .end local v11           #neededNonLetter:I
    .end local v12           #neededNumbers:I
    .end local v13           #neededSymbols:I
    .end local v14           #neededUpperCase:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMinimumCharacterChangeLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 3056
    const/16 v21, 0x3d

    goto/16 :goto_0

    .line 3059
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterOccurrences(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 3062
    const/16 v21, 0x3e

    goto/16 :goto_0

    .line 3064
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumCharacterSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 3067
    const/16 v21, 0x3f

    goto/16 :goto_0

    .line 3069
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->checkMaximumNumericSequenceLength(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 3072
    const/16 v21, 0x40

    goto/16 :goto_0

    .line 3075
    :cond_1c
    const/16 v21, 0x3b

    goto/16 :goto_0
.end method

.method private verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V
    .locals 9
    .parameter "containerId"
    .parameter "password"
    .parameter "statusCallback"
    .parameter "isAutoMount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4264
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPassword() isAutoMount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4267
    .local v4, data:Landroid/os/Bundle;
    const-string v0, "containerid"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4268
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v2

    .line 4270
    .local v2, requestId:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4272
    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "A Request for Verify Password / Change Password is already in progress"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    const/16 v0, 0x3f7

    invoke-interface {p3, v0, v4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 4334
    :goto_0
    return-void

    .line 4278
    :cond_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4279
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4280
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v7

    .line 4281
    .local v7, containerStatus:I
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Status :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_UPGRADE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    if-ne v7, v0, :cond_5

    .line 4289
    :cond_2
    if-nez p4, :cond_3

    .line 4290
    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### reportSuccessfulPasswordAttempt #################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4291
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4293
    :cond_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Starting container remounting"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v6

    .line 4297
    .local v6, container:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual {v6, p2}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setPassword(Ljava/lang/String;)V

    .line 4298
    const/4 v0, 0x2

    invoke-direct {p0, v6, p1, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->mount(Lcom/sec/knox/container/EnterpriseContainerObjectParam;III)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4299
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Mount not success"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4300
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4329
    .end local v6           #container:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v7           #containerStatus:I
    :catch_0
    move-exception v8

    .line 4330
    .local v8, ex:Ljava/lang/Exception;
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 4332
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify Password Failure happend "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4302
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v6       #container:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .restart local v7       #containerStatus:I
    :cond_4
    :try_start_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, " Remount Async process started. State will be changed in the callback...."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4307
    .end local v6           #container:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4308
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4309
    const/4 v1, 0x4

    const/16 v3, 0x3f6

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 4313
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    .line 4314
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 4321
    .end local v7           #containerStatus:I
    :cond_7
    if-nez p4, :cond_8

    .line 4322
    const-string v0, "EnterpriseContainerService"

    const-string v1, "############### CALLING ACT ON WRONG PWD#################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4323
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    .line 4325
    :cond_8
    const/4 v1, 0x4

    const/16 v3, 0x3f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public activateContainer(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 3964
    const-string v1, "EnterpriseContainerService"

    const-string v2, "activate Container is called"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    const/16 v1, 0x18

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 3967
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ACTIVATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 3969
    .local v0, transitState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3970
    const-string v1, "EnterpriseContainerService"

    const-string v2, "activateContainer container state changed to active"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    const/4 v1, 0x1

    .line 3975
    :goto_0
    return v1

    .line 3973
    :cond_0
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateContainer container state cannot change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public adminPasswordReset(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 5819
    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5820
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_ADMIN_RESET_PASSWORD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 5822
    .local v0, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5823
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setPasswordVerifyMode SUCCESS "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5824
    const/4 v1, 0x1

    .line 5827
    :goto_0
    return v1

    .line 5826
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setPasswordVerifyMode FAIL "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5827
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelCreateContainer(I)Z
    .locals 7
    .parameter "containerReqId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 4083
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Req ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerIdForRequestId(I)I

    move-result v2

    .line 4085
    .local v2, containerId:I
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCreateContainer() Container ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4088
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4090
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container before createContainerInternal"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4092
    .local v4, data:Landroid/os/Bundle;
    const-string v0, "containerid"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4093
    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4094
    const/4 v1, 0x5

    const/16 v3, 0x3f8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 4097
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 4099
    new-instance v6, Landroid/content/Intent;

    const-string v0, "enterprise.container.cancelled"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4100
    .local v6, containerRemoved:Landroid/content/Intent;
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container Cancelled intent Container id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    const-string v0, "containerid"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4102
    const-string v0, "requestid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4103
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4104
    invoke-direct {p0, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    .line 4112
    .end local v4           #data:Landroid/os/Bundle;
    .end local v6           #containerRemoved:Landroid/content/Intent;
    :goto_0
    return v5

    .line 4106
    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4108
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Cancel Container during container creation"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4109
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->containerCanceled(I)Z

    move-result v5

    goto :goto_0

    .line 4111
    :cond_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "cancelCreateContainer() API has failed due to Id mismatch"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4112
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public changeActiveContainerPasswordStatus(I)V
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5452
    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5453
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5455
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    sget-object v3, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 5457
    .local v0, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5458
    const-string v1, "EnterpriseContainerService"

    const-string v2, "changeActiveContainerPasswordStatus container moved to verify password killing timer "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5460
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 5463
    :cond_0
    return-void
.end method

.method public changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .parameter "containerId"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5275
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5277
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerService;->changeContainerPassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 5278
    return-void
.end method

.method public checkPassword(ILjava/lang/String;)I
    .locals 3
    .parameter "containerId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 4201
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4204
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->verifyPassword(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4205
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->activatePasswordAndContainer(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4206
    const-string v0, "EnterpriseContainerService"

    const-string v1, "check password activating"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->reportSuccessfulPasswordAttempt(I)V

    .line 4208
    const/4 v0, 0x1

    .line 4218
    :goto_0
    return v0

    .line 4210
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "checkPassword could not activate"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0

    .line 4216
    :cond_1
    const-string v1, "EnterpriseContainerService"

    const-string v2, "check Password failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4217
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->actOnWrongPasswordAttempt(I)V

    goto :goto_0
.end method

.method public containerizedAppStarting(I)V
    .locals 7
    .parameter "containerId"

    .prologue
    .line 4568
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4571
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4573
    .local v1, token:J
    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string v5, "containerizedAppStarting executing from proxies"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4575
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->notifyContainerAppLaunch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4582
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4584
    return-void

    .line 4577
    :catch_0
    move-exception v0

    .line 4578
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4582
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4579
    :catch_1
    move-exception v0

    .line 4580
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerizedAppStarting crashed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .locals 10
    .parameter "callback"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3920
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-------------------------------->createContainer() FLAG: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<--------------------------------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 3923
    .local v0, adminId:I
    const/4 v1, -0x1

    .line 3924
    .local v1, containerId:I
    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-nez v7, :cond_0

    .line 3925
    const-string v7, "EnterpriseContainerService"

    const-string v8, "container id : 1 creation in progress"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    iput v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 3928
    :cond_0
    iget v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    .line 3929
    invoke-direct {p0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v7

    if-ne v7, v6, :cond_1

    .line 3930
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is already present either in active or inactive so returning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    :goto_0
    return v5

    .line 3934
    :cond_1
    const/4 v7, 0x2

    if-ge v1, v7, :cond_4

    .line 3935
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 3936
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Request Id already present, returning "

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3940
    :cond_2
    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v4

    .line 3941
    .local v4, result:Z
    if-nez v4, :cond_3

    .line 3942
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Could not add to DB, returning "

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3945
    :cond_3
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    invoke-virtual {v5}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v5

    iput v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    .line 3946
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3948
    .local v2, owner:J
    const-string v5, "EnterpriseContainerService"

    const-string v7, "checkIfWhitelistedApp called"

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3950
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-direct {p0, v1, v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->sendNewContainerNotificationRequest(III)V

    .line 3951
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v5, v1, v7}, Lcom/sec/knox/container/manager/StateManager;->setRequestIdForContainer(II)V

    .line 3952
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, v1, p2}, Lcom/sec/knox/container/manager/StateManager;->setFeatureFlagForContainer(II)V

    .line 3953
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3954
    const-string v5, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Container Req ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3955
    goto :goto_0

    .line 3957
    .end local v2           #owner:J
    .end local v4           #result:Z
    :cond_4
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Reached Max number of Containers, returning "

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 9
    .parameter "container"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3859
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createContainerInternal() ReqId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    invoke-direct {p0, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 3862
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V

    .line 3863
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->add(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 3864
    if-nez p1, :cond_0

    .line 3865
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Error create container: Container object is null"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3867
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3913
    :goto_0
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    .line 3910
    :goto_1
    return v3

    .line 3870
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getRequestId()I

    move-result v5

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerRequestId:I

    if-eq v5, v6, :cond_1

    .line 3871
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3872
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3913
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    throw v3

    .line 3876
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3877
    .local v0, oldId:J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3879
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->checkExistence(I)Z

    move-result v5

    if-ne v5, v4, :cond_3

    .line 3880
    :cond_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already present either in active or inactive so returning"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3883
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto :goto_0

    .line 3886
    :cond_3
    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    if-ge v5, v8, :cond_7

    .line 3887
    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 3888
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget v8, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v7, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v7

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATE_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    .line 3891
    .local v2, tempState:Lcom/sec/knox/container/constants/CSState;
    sget-object v5, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    if-eq v2, v5, :cond_4

    iget v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainer(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3893
    :cond_4
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Container primary mount failed"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3895
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 3913
    :cond_5
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V

    move v3, v4

    .line 3898
    goto/16 :goto_1

    .line 3901
    .end local v2           #tempState:Lcom/sec/knox/container/constants/CSState;
    :cond_6
    :try_start_3
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Container password: is either null or empty"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3903
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V

    goto/16 :goto_0

    .line 3907
    :cond_7
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Max number of container reached."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V

    .line 3909
    iget v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public enforcePasswordChange(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4223
    const/16 v2, 0x8

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4224
    invoke-direct {p0, p1, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4225
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.redex.proxy.activity.show_dialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4226
    .local v0, passwordExpired:Landroid/content/Intent;
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Password is expired. Fire a change password intent"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4228
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4231
    .end local v0           #passwordExpired:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5060
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5064
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v0

    .line 5065
    .local v0, allowBluetoothMode:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBluetoothMode containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    return v0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5207
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5211
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5212
    .local v0, allowBrowser:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowBrowser containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    return v0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5183
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5187
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5188
    .local v0, allowCamera:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowCamera containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    return v0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5085
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5089
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5090
    .local v0, allowDesktopSync:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowDesktopSync containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5092
    return v0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5036
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5040
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5041
    .local v0, allowInternetSharing:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowInternetSharing containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5043
    return v0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5109
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5113
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5114
    .local v0, allowIrDA:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowIrDA containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5116
    return v0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5159
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5163
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5164
    .local v0, allowPOPIMAPEmail:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowPOPIMAPEmail containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5166
    return v0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5134
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5138
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5139
    .local v0, allowStorageCard:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowStorageCard containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    return v0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5011
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5015
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 5016
    .local v0, allowTextMessaging:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowTextMessaging containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5018
    return v0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4986
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4990
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 4991
    .local v0, allowWifi:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowWifi containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4993
    return v0
.end method

.method public getAndroidId(I)Ljava/lang/String;
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5396
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5398
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getAndroidId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "folder"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2675
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2676
    .local v5, str:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2677
    .local v4, mlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2678
    .local v1, fileEntry:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2680
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2682
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2677
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2685
    .end local v1           #fileEntry:Ljava/io/File;
    :cond_1
    return-object v4
.end method

.method public getAppInstallationSource(ILjava/lang/String;)I
    .locals 3
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5293
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5295
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;

    move-result-object v1

    .line 5298
    .local v1, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5299
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .line 5300
    .local v0, info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    if-eqz v0, :cond_0

    .line 5301
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getInstallationSource()I

    move-result v2

    .line 5305
    .end local v0           #info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public getContainerEmailId(I)Ljava/lang/String;
    .locals 3
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4184
    const/16 v1, 0xf

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4188
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    .line 4190
    .local v0, container:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4191
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerEmailId: Email is null. Container is not yet created."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    const/4 v1, 0x0

    .line 4194
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContainerFirmwareVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "containerId"

    .prologue
    .line 5706
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 5707
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainerForPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5445
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainerForPackage() Package Name= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5446
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 5447
    const/4 v0, -0x1

    return v0
.end method

.method public getContainerId(I)I
    .locals 1
    .parameter "appUid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4144
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 4145
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerIdFromAppId(I)I

    move-result v0

    return v0
.end method

.method public getContainerLockOnScreenLock(I)Z
    .locals 3
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5587
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with containerid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5588
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5590
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerLockOnScreenLock(I)Z

    move-result v0

    return v0
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .locals 3
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4119
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4124
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 4125
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5341
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5345
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType(I)I
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5282
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5286
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getContainerisedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "containerId"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5482
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5483
    const/16 v1, 0x20

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5484
    const/4 v0, 0x0

    .line 5485
    .local v0, res:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 5486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec_container_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5487
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerisedString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5491
    :goto_0
    return-object v0

    .line 5489
    :cond_0
    const-string v1, "EnterpriseContainerService"

    const-string v2, "getContainerized string is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "containerId"
    .parameter "packageNm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4151
    const/16 v3, 0x20

    invoke-direct {p0, v3, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4152
    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v2

    .line 4153
    .local v2, stringNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 4154
    const-string v3, "EnterpriseContainerService"

    const-string v4, "getContainerizedPackageName start"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4156
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4166
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4162
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, "EnterpriseContainerService"

    const-string v4, "getContainerizedPackageName Nothing matched"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4166
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4164
    :cond_2
    const-string v3, "EnterpriseContainerService"

    const-string v4, "getContainerizedPackageName input is null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContainers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4132
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainers   --  Called + uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    const/16 v0, 0x3a

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4138
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getContainers   --  Called passing security"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4588
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4592
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 4594
    .local v0, currentFailedPasswordAttempts:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentFailedPasswordAttempts containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    return v0
.end method

.method getFrameworkApks(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2689
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2690
    .local v5, str:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2691
    .local v4, mlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2692
    .local v1, fileEntry:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2694
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework Apk From Folder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2696
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2691
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2699
    .end local v1           #fileEntry:Ljava/io/File;
    :cond_1
    return-object v4
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 10
    .parameter "containerId"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5776
    const-string v7, "EnterpriseContainerService"

    const-string v8, "getInstalledApplications()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5777
    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5779
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5781
    .local v6, returnList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5782
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 5783
    .local v1, applications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v2

    .line 5784
    .local v2, containerPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5785
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5786
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5789
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #containerPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 5790
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledApplications: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5792
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 10
    .parameter "containerId"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5797
    const-string v7, "EnterpriseContainerService"

    const-string v8, "upgradeComplete()"

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5798
    const/4 v7, 0x1

    invoke-direct {p0, v7, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5800
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5802
    .local v6, returnList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5803
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 5804
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v0

    .line 5805
    .local v0, containerPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5806
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5807
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5810
    .end local v0           #containerPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 5811
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "EnterpriseContainerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getInstalledPackages: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5813
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-object v6
.end method

.method public getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "containerId"
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 5595
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchIntentForContainerizedApp - containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pakcage name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sec_container_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5599
    .local v3, strPrefix:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5600
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5601
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5605
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5608
    .local v2, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5610
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 5612
    :cond_0
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 5615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5616
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5617
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5619
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Result #2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentToResolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 5623
    :cond_2
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ris is null! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5624
    const/4 v0, 0x0

    .line 5629
    :goto_0
    return-object v0

    .line 5626
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5627
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5628
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLockType(I)I
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5310
    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5313
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    .line 5314
    .local v0, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v0, :cond_0

    .line 5315
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerLockType()I

    move-result v1

    .line 5317
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4602
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4606
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4608
    .local v0, maximumFailedPasswordsForWipe:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4610
    return v0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 5
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4639
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4643
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 4644
    .local v0, maximumTimeToLock:J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaximumTimeToLock containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    return-wide v0
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4442
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4446
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4448
    .local v0, minPasswordComplexChars:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    return v0
.end method

.method public getMountStatus(I)Z
    .locals 5
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    .line 5229
    const/16 v2, 0x20

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5230
    const-string v2, "EnterpriseContainerService"

    const-string v3, "getMountStatus() permission get it"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5231
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 5232
    .local v0, currentState:Lcom/sec/knox/container/constants/CSState;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentStateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5233
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5254
    :goto_0
    :pswitch_0
    return v1

    .line 5238
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4172
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4173
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalPackageNames(I)Ljava/util/List;
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4178
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4179
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNamesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 9

    .prologue
    .line 3980
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3981
    .local v0, appUid:I
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3983
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 3987
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 3988
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 3989
    .local v2, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_0

    .line 3990
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId UID matched"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3995
    .end local v2           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 3997
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getContainerId packageName --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 4000
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v6, "EnterpriseContainerService"

    const-string v7, "getContainerId packageName is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4455
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4457
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getPassword() returns null all the time."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordExpiration(ILandroid/content/ComponentName;)J
    .locals 5
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4652
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4656
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 4657
    .local v0, passwordExpiration:J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpiration containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    return-wide v0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 5
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4677
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4681
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 4683
    .local v0, passwordExpirationTimeout:J
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpirationTimeout containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4685
    return-wide v0
.end method

.method public getPasswordExpires(ILandroid/content/ComponentName;)I
    .locals 5
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4413
    const-string v2, "EnterpriseContainerService"

    const-string v3, "getPasswordExpires()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4414
    const/16 v2, 0x1f

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4418
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    .line 4419
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4420
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 4422
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpires: containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4424
    long-to-int v2, v0

    return v2
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4369
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4373
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4374
    .local v0, passwordHistory:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistory containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    return v0
.end method

.method public getPasswordHistoryLength(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4691
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4695
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4696
    .local v0, passwordHistory:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHistoryLength: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    return v0
.end method

.method public getPasswordMaximumLength(II)I
    .locals 4
    .parameter "containerId"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4713
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4717
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMaximumLength(II)I

    move-result v0

    .line 4718
    .local v0, passwordMaximumLength:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMaximumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4720
    return v0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4726
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4730
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4731
    .local v0, passwordMinimumLength:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLength containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    return v0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4751
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4755
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4756
    .local v0, passwordMinimumLetters:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLetters containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4758
    return v0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4776
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4780
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4782
    .local v0, passwordMinimumLowerCase:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumLowerCase containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    return v0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4802
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4806
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4808
    .local v0, passwordMinimumNonLetter:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNonLetter containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4810
    return v0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4828
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4832
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4833
    .local v0, passwordMinimumNumeric:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4835
    return v0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4853
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4857
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4858
    .local v0, passwordMinimumSymbols:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordMinimumSymbols: containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    return v0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4879
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4883
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4885
    .local v0, passwordMinimumUpperCase:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4887
    return v0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4904
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4908
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    .line 4909
    .local v0, passwordQuality:I
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordQuality containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    return v0
.end method

.method public getPasswordVerifyOnlyOnModeChange(I)Z
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5475
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5477
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerVerifyOnlyOnChangeMode(I)Z

    move-result v0

    return v0
.end method

.method public getProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "containerId"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5409
    if-nez p2, :cond_0

    .line 5410
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5411
    const/4 v0, 0x0

    .line 5415
    :goto_0
    return-object v0

    .line 5413
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5415
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "containerId"
    .parameter "propertyName"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5427
    if-nez p2, :cond_0

    .line 5428
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getProperty propertyName is null"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5429
    const/4 v0, 0x0

    .line 5433
    :goto_0
    return-object v0

    .line 5431
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5433
    invoke-static {p2, p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4929
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4933
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 4934
    .local v0, retVal:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimplePasswordEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    return v0
.end method

.method public getStatus(I)I
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5221
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5222
    const-string v0, "EnterpriseContainerService"

    const-string v1, "getStatus(). This will be same as getContainerActivation status"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode(I)Z
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5385
    const/4 v0, 0x0

    return v0
.end method

.method public installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z
    .locals 10
    .parameter "containerId"
    .parameter "apkFilePath"
    .parameter "statusCallback"
    .parameter "installType"
    .parameter "installSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4506
    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackages()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4511
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPackageInstallable(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f5

    if-eq p4, v1, :cond_0

    const/16 v1, 0x1f6

    if-ne p4, v1, :cond_1

    .line 4513
    :cond_0
    const/4 v1, 0x0

    .line 4533
    :goto_0
    return v1

    .line 4516
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4517
    .local v9, callingUid:I
    invoke-direct {p0, v9, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v8

    .line 4518
    .local v8, bConApp:Z
    const/16 v1, 0x3e8

    if-eq v9, v1, :cond_2

    if-eqz v8, :cond_2

    invoke-direct {p0, p1, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4521
    const-string v1, "EnterpriseContainerService"

    const-string v2, "installPackage failed. Calling containerized app does not have permission to install."

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4523
    const/4 v1, 0x0

    goto :goto_0

    .line 4526
    :cond_2
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    .line 4527
    invoke-static {p2, p1}, Lcom/android/server/container/util/StringUtil;->getMountedPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 4530
    :cond_3
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)V

    .line 4532
    .local v0, packageInstaller:Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$InstallPackageThread;->start()V

    .line 4533
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 5
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4953
    const/16 v2, 0xc

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4956
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfMDMAdmin()Z

    move-result v0

    .line 4957
    .local v0, calledFromMDM:Z
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v2, p1, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isActivePasswordSufficient(IZ)Z

    move-result v1

    .line 4959
    .local v1, pwdSufficient:Z
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivePasswordSufficient value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4960
    return v1
.end method

.method public isKeyguardLocked(I)Z
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5357
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5362
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure(I)Z
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5367
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5372
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getStatus(I)I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordForbidden(ILjava/lang/String;)Z
    .locals 3
    .parameter "containerId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5565
    const-string v1, "EnterpriseContainerService"

    const-string v2, "isPasswordForbidden()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5566
    const/16 v1, 0x1c

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5569
    if-nez p2, :cond_0

    .line 5572
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->isPasswordForbiddenInternal(ILjava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 4
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4390
    const/16 v1, 0x1f

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4394
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    .line 4396
    .local v0, isPasswordVisisbilityEnabled:Z
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPasswordVisisbilityEnabled containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    return v0
.end method

.method killAllApps(I)Z
    .locals 9
    .parameter "containerId"

    .prologue
    const/4 v5, 0x0

    .line 4006
    const-string v6, "EnterpriseContainerService"

    const-string v7, "Killing all apps"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4007
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 4008
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4009
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Killing Package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    :try_start_0
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4012
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4014
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4016
    .end local v0           #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 4017
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killing all apps Exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_1
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public lockContainer(I)Z
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5262
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5263
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->lockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public matchPublicKeyForContainer([B)I
    .locals 2
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5438
    const-string v0, "EnterpriseContainerService"

    const-string v1, "matchPublicKeyForContainer()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5439
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 5440
    const/4 v0, -0x1

    return v0
.end method

.method public onContainerStateChange(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSState;)V
    .locals 5
    .parameter "containerId"
    .parameter "oldState"
    .parameter "state"

    .prologue
    .line 525
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast STATE_CHANGED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string v2, "container_old_state"

    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string v2, "container_new_state"

    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getPlatformContainerState(Lcom/sec/knox/container/constants/CSState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 536
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerService$3;->$SwitchMap$com$sec$knox$container$constants$CSState:[I

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 584
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 545
    :pswitch_1
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATED_NOT_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-ne p2, v2, :cond_0

    .line 546
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3846
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3853
    :goto_0
    return v1

    .line 3847
    :catch_0
    move-exception v0

    .line 3848
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const/4 v1, 0x0

    goto :goto_0

    .line 3849
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3850
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected remote exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    throw v0
.end method

.method public onUserInteraction(I)V
    .locals 2
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4343
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4345
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getWakeLockCounter()I

    move-result v0

    if-nez v0, :cond_0

    .line 4347
    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Restaring Timeout"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4348
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->scheduleTimerOnUserInteraction(Landroid/content/Context;I)V

    .line 4353
    :goto_0
    return-void

    .line 4351
    :cond_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "onUserInteraction: Password is inactive. Ignoring..."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preSystemReady()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public reboot(ILjava/lang/String;)V
    .locals 5
    .parameter "containerId"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x52

    .line 4463
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4466
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4467
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "passwordstatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4468
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4470
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->updatePasswordStatus(ILjava/lang/Integer;)Z

    .line 4472
    :cond_0
    return-void
.end method

.method public registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 2
    .parameter "containerId"
    .parameter "eventId"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5691
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 5693
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->register([Ljava/lang/String;Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 5
    .parameter "cid"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4059
    const/16 v2, 0x1d

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    move-result v1

    .line 4063
    .local v1, uid:I
    const-string v2, "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->enforcePackageManagerPermissionForContainerizedApps(IILjava/lang/String;)V

    .line 4069
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContainer() ContainerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v2, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v0

    .line 4072
    .local v0, state:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 4075
    :cond_0
    const-string v2, "EnterpriseContainerService"

    const-string v3, "removeContainer Failed, Reason: Invalid container state."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    const/4 v2, 0x0

    .line 4078
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetPassword(ILjava/lang/String;I)Z
    .locals 2
    .parameter "containerId"
    .parameter "password"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4966
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4968
    const-string v0, "EnterpriseContainerService"

    const-string v1, "resetPassword called. Ignoring and returning false."

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5049
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5051
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBluetoothMode containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    if-eqz p2, :cond_0

    .line 5054
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 5056
    :cond_0
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5196
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5198
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowBrowser containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5200
    if-eqz p2, :cond_0

    .line 5201
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 5203
    :cond_0
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5172
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5174
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowCamera containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5176
    if-eqz p2, :cond_0

    .line 5177
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 5179
    :cond_0
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5073
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5075
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowDesktopSync containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5077
    if-eqz p2, :cond_0

    .line 5078
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 5080
    :cond_0
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5024
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5026
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowInternetSharing containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5028
    if-eqz p2, :cond_0

    .line 5029
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 5031
    :cond_0
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5098
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5100
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowIrDA containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5102
    if-eqz p2, :cond_0

    .line 5103
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 5105
    :cond_0
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5147
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5149
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    if-eqz p2, :cond_0

    .line 5152
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 5154
    :cond_0
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5122
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5124
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowStorageCard containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    if-eqz p2, :cond_0

    .line 5127
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 5129
    :cond_0
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4999
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5001
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowTextMessaging containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5003
    if-eqz p2, :cond_0

    .line 5004
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 5006
    :cond_0
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4975
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4977
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowWifi containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4979
    if-eqz p2, :cond_0

    .line 4980
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 4982
    :cond_0
    return-void
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .locals 3
    .parameter "containerId"
    .parameter "containerLockOnScreenLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5578
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContainerLockOnScreenLock called with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5580
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5582
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerLockOnScreenLock(IZ)Z

    move-result v0

    return v0
.end method

.method public setLockType(II)Z
    .locals 4
    .parameter "containerId"
    .parameter "lockType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5324
    const-string v1, "EnterpriseContainerService"

    const-string v2, "setLockType()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5328
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "locktype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5329
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/sec/knox/container/manager/StateManager;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5331
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating lock type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->updateLockType(II)Z

    .line 5333
    const/4 v1, 0x1

    .line 5335
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "num"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4616
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4618
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumFailedPasswordsForWipe containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4620
    if-eqz p2, :cond_0

    .line 4621
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 4623
    :cond_0
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "timeMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4628
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4630
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaximumTimeToLock containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    if-eqz p2, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 4635
    :cond_0
    return-void
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4430
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4432
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    if-eqz p2, :cond_0

    .line 4435
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 4437
    :cond_0
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4665
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4667
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationTimeout containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4669
    if-eqz p2, :cond_0

    .line 4670
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 4672
    :cond_0
    return-void
.end method

.method public setPasswordExpires(ILandroid/content/ComponentName;I)V
    .locals 4
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4405
    const-string v0, "EnterpriseContainerService"

    const-string v1, "setPasswordExpires()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4406
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4408
    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 4409
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4358
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4360
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordHistory containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    if-eqz p2, :cond_0

    .line 4363
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 4365
    :cond_0
    return-void
.end method

.method public setPasswordHistoryLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4704
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordHistoryLength.ComponentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4706
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4708
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 4709
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4739
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4741
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLength containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    if-eqz p2, :cond_0

    .line 4744
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 4746
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4764
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4766
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLetters containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    if-eqz p2, :cond_0

    .line 4769
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 4771
    :cond_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4790
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4792
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumLowerCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4794
    if-eqz p2, :cond_0

    .line 4795
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 4797
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4816
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4818
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNonLetter containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    if-eqz p2, :cond_0

    .line 4821
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 4823
    :cond_0
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4841
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4843
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumNumeric containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4845
    if-eqz p2, :cond_0

    .line 4846
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 4848
    :cond_0
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4866
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumSymbols: containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4868
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4871
    if-eqz p2, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 4874
    :cond_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4893
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4895
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordMinimumUpperCase containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4897
    if-eqz p2, :cond_0

    .line 4898
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 4900
    :cond_0
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4917
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4919
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordQuality containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    if-eqz p2, :cond_0

    .line 4922
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 4924
    :cond_0
    return-void
.end method

.method public setPasswordVerifyOnlyOnModeChange(IZ)Z
    .locals 1
    .parameter "containerId"
    .parameter "toggleFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5468
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5470
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/manager/StateManager;->setContainerVerifyOnlyOnChangeMode(IZ)Z

    move-result v0

    return v0
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 3
    .parameter "containerId"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4381
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4383
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordVisibilityEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4385
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setPasswordVisibilityEnabled(IZ)V

    .line 4386
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 3
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4942
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4944
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimplePasswordEnabled containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4946
    if-eqz p2, :cond_0

    .line 4947
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 4949
    :cond_0
    return-void
.end method

.method public startApp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "containerId"
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5508
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startApp() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    const/16 v5, 0x8

    invoke-direct {p0, v5, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5510
    if-eqz p2, :cond_2

    .line 5511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5513
    .local v2, token:J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5514
    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 5515
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    .line 5518
    if-nez p3, :cond_0

    .line 5519
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getActivitynameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5521
    :cond_0
    if-eqz p3, :cond_1

    .line 5522
    invoke-direct {p0, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5523
    invoke-direct {p0, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->launchActivityForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5530
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5533
    .end local v2           #token:J
    :cond_2
    return v4

    .line 5527
    .restart local v2       #token:J
    :catch_0
    move-exception v0

    .line 5528
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "EnterpriseContainerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not start app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5530
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startTimer(ILandroid/os/IBinder;)Z
    .locals 4
    .parameter "containerId"
    .parameter "binder"

    .prologue
    .line 5634
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Start Timer"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5636
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5638
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5639
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized startUpgrade(I)Z
    .locals 7
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5725
    monitor-enter p0

    :try_start_0
    const-string v4, "EnterpriseContainerService"

    const-string v5, "startUpgrade()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5726
    const/4 v4, 0x2

    invoke-direct {p0, v4, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5729
    const/4 v0, 0x0

    .line 5730
    .local v0, returnValue:Z
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v5, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v5, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v4, p1, v5, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 5732
    .local v1, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    sget-object v5, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v5}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 5733
    const-wide/16 v2, 0x0

    .line 5734
    .local v2, token:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5735
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 5736
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5737
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->killTimer(I)V

    .line 5738
    const-string v4, "EnterpriseContainerService"

    const-string v5, "Killed all apps and timer"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5739
    const/4 v0, 0x1

    .line 5746
    .end local v2           #token:J
    :goto_0
    monitor-exit p0

    return v0

    .line 5741
    :cond_0
    :try_start_1
    const-string v4, "EnterpriseContainerService"

    const-string v5, "upgrade container failed. Upgrade allowed only on active/inactive upgrade/reset_pwd container state"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5744
    const/4 v0, 0x0

    goto :goto_0

    .line 5725
    .end local v0           #returnValue:Z
    .end local v1           #temp:Lcom/sec/knox/container/constants/CSState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopApp(ILjava/lang/String;)Z
    .locals 9
    .parameter "containerId"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5538
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopApp() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5539
    const/16 v6, 0x8

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5540
    if-eqz p2, :cond_1

    .line 5541
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v7, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, p1}, Lcom/sec/knox/container/manager/StateManager;->getPackageNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 5542
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5544
    .local v3, token:J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5545
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getContainerStatus(I)I

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    .line 5547
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5549
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5550
    const/4 v5, 0x1

    .line 5557
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5560
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #token:J
    :cond_1
    return v5

    .line 5552
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #token:J
    :catch_0
    move-exception v1

    .line 5553
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5557
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 5554
    :catch_1
    move-exception v1

    .line 5555
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public stopTimer(ILandroid/os/IBinder;)Z
    .locals 4
    .parameter "containerId"
    .parameter "binder"

    .prologue
    .line 5644
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Stop Timer called "

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5646
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5648
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5649
    const/4 v1, 0x1

    return v1
.end method

.method public stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z
    .locals 5
    .parameter "containerId"
    .parameter "binder"
    .parameter "milliseconds"

    .prologue
    .line 5654
    const-string v2, "EnterpriseContainerService"

    const-string v3, "stopTimerWithTimeOut called timeout"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5656
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5658
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5659
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopTimerWithTimeOut scheduling timer At"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5660
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 5662
    .local v1, timeoutRunnable:Lcom/sec/knox/container/EnterpriseContainerService$TimeoutRunnableStartAfterStop;
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5663
    const/4 v2, 0x1

    return v2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 587
    const-string v0, "EnterpriseContainerService"

    const-string v1, "SystemReady()"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->createContainerDataDir()V

    .line 589
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V

    .line 590
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContainerServiceHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    .line 592
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 593
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    .line 594
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->doBootCompleteTaks()V

    .line 595
    return-void
.end method

.method public unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z
    .locals 1
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5699
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(I)I

    .line 5701
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .locals 7
    .parameter "containerId"
    .parameter "packagepath"
    .parameter "statusCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4539
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallPackages(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4540
    const/16 v2, 0xb

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4544
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->getMountStatus(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4562
    :cond_0
    :goto_0
    return v1

    .line 4547
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4548
    .local v6, callingUid:I
    invoke-direct {p0, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfUninstallWhitelistPackage(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    if-eq v6, v2, :cond_2

    invoke-direct {p0, v6, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->checkIfContainerizedApp(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->isPackageInInstallWhiteList(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4551
    const-string v2, "EnterpriseContainerService"

    const-string v3, "uninstallPackage failed. Calling containerized app does not have permission to uninstall."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4555
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4556
    if-eqz p2, :cond_0

    .line 4557
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 4559
    .local v0, packageUninstaller:Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;
    invoke-virtual {v0}, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->start()V

    .line 4560
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unlockContainer(I)Z
    .locals 1
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5268
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5269
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->unlockContainerInternal(I)Z

    move-result v0

    return v0
.end method

.method public updateCallbackStatus(IIILandroid/os/Bundle;Z)V
    .locals 9
    .parameter "requestType"
    .parameter "key"
    .parameter "errorcode"
    .parameter "data"
    .parameter "lastUpdate"

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, cbList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;>;"
    const/4 v4, 0x0

    .line 733
    .local v4, mgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    const/4 v5, 0x0

    .line 734
    .local v5, requestId:I
    packed-switch p1, :pswitch_data_0

    .line 757
    const/4 v4, 0x0

    .line 759
    :cond_0
    :goto_0
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Callback manager:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    if-eqz v4, :cond_2

    .line 761
    if-eqz p5, :cond_3

    .line 762
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->remove(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 768
    :goto_1
    if-eqz v1, :cond_4

    .line 769
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 770
    .local v0, cb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling callback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    if-eqz v0, :cond_1

    .line 772
    invoke-interface {v0, p3, p4}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 778
    .end local v0           #cb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 779
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "EnterpriseContainerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 737
    :pswitch_0
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 738
    if-eqz p5, :cond_0

    .line 739
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    .line 740
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v5}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto :goto_0

    .line 744
    :pswitch_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 745
    if-eqz p5, :cond_0

    .line 746
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    .line 747
    iget-object v6, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v6, v5}, Lcom/sec/knox/container/manager/StateManager;->clearContainerRequestId(I)V

    goto/16 :goto_0

    .line 751
    :pswitch_2
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 752
    goto/16 :goto_0

    .line 754
    :pswitch_3
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 755
    goto/16 :goto_0

    .line 764
    :cond_3
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->get(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 776
    :cond_4
    :try_start_1
    const-string v6, "EnterpriseContainerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call Back not found for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method updateEventToListners(IILandroid/os/Bundle;)V
    .locals 7
    .parameter "cid"
    .parameter "event"
    .parameter "bundle"

    .prologue
    .line 5667
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-static {p1, p2}, Lcom/android/server/container/util/StringUtil;->getBroadcastingKey(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->beginBroadcast(Ljava/lang/String;)I

    move-result v2

    .line 5668
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 5669
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    .line 5670
    .local v3, receiver:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    if-eqz v3, :cond_0

    .line 5672
    :try_start_0
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEventToListners() - sending event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5673
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;->onEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5668
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5674
    :catch_0
    move-exception v0

    .line 5675
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "EnterpriseContainerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5679
    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4, v3}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5680
    :catch_1
    move-exception v4

    goto :goto_1

    .line 5685
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #receiver:Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    :cond_1
    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    invoke-virtual {v4}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;->finishBroadcast()V

    .line 5686
    return-void
.end method

.method public upgradeComplete(I)Z
    .locals 5
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5751
    const-string v2, "EnterpriseContainerService"

    const-string v3, "upgradeComplete()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5752
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5755
    const/4 v0, 0x0

    .line 5756
    .local v0, returnValue:Z
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    iget-object v3, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v3, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UPGRADE_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 5758
    .local v1, temp:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 5759
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Upgrade completed. Saving current device firmware version."

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5760
    invoke-direct {p0}, Lcom/sec/knox/container/EnterpriseContainerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->setContainerFirmwareVersionToCacheAndDB(ILjava/lang/String;)Z

    .line 5761
    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V

    .line 5762
    const/4 v0, 0x1

    .line 5771
    :goto_0
    return v0

    .line 5764
    :cond_0
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Upgrade failed.  Current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;

    invoke-virtual {v4, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "containerId"
    .parameter "oldpassword"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5351
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5352
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->validatePasswordInternal(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .parameter "containerId"
    .parameter "password"
    .parameter "statusCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4249
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    .line 4252
    return-void
.end method

.method public verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 1
    .parameter "containerId"
    .parameter "password"
    .parameter "statusCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4257
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 4259
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->verifyPasswordInternal(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;Z)V

    .line 4260
    return-void
.end method

.method public wipeSDCardData(I)Z
    .locals 3
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5496
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing data for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5498
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/knox/container/EnterpriseContainerService;->enforceEnterpriseContainerPermission(II)I

    .line 5501
    const-string v0, "ctl.start"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containersetup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5502
    const/4 v0, 0x1

    return v0
.end method
