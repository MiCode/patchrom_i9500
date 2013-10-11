.class public Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
.super Ljava/lang/Object;
.source "LockPatternUtilsAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

.field private static mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 56
    const-class v1, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    if-nez v0, :cond_0

    .line 57
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    .line 59
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public isDeviceSecure()Z
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, isSecure:Z
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 68
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 69
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 72
    const-string v2, "LockPatternUtilsAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLockPasswordEnabled()Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    return v0
.end method
