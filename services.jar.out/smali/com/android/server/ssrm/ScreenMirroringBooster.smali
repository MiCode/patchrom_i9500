.class public Lcom/android/server/ssrm/ScreenMirroringBooster;
.super Lcom/android/server/ssrm/FgAppListener;
.source "ScreenMirroringBooster.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final STATUS_SCREEN_MIRRORING:Ljava/lang/String; = "ScreenMirroring_enable"

.field static final STATUS_SECURE_PLAYBACK:Ljava/lang/String; = "SecurePlayback_play"

.field private static TAG:Ljava/lang/String;

.field private static mExceptionEnabled:Z

.field private static mScreenMirroring:Z

.field private static mSecurePlayBack:Z


# instance fields
.field private mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

.field private mCPUHelperFor10G:Landroid/os/DVFSHelper;

.field private mCPUHelperFor12G:Landroid/os/DVFSHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    const-string v0, "ScreenMirroringBooster"

    sput-object v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    .line 10
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->DEBUG:Z

    .line 20
    sput-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 21
    sput-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 23
    sput-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mExceptionEnabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    .line 43
    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    .line 44
    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    .line 14
    return-void
.end method

.method private sendSIOPExceptionIntent(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 25
    sget-boolean v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mExceptionEnabled:Z

    if-ne v1, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sput-boolean p1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mExceptionEnabled:Z

    .line 29
    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSIOPExceptionIntent:: mExceptionEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroringBooster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string v1, "PackageName"

    sget-object v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 8

    .prologue
    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_0G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    .line 49
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    const v6, 0xf4240

    invoke-virtual {v2, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_2G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_CORE_2"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    .line 61
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 65
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 66
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    .line 69
    sget-object v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatus:: mSecurePlayBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenMirroring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_4

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_6

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 73
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 79
    :cond_5
    :goto_0
    return-void

    .line 74
    :cond_6
    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 76
    iget-object v0, p0, Lcom/android/server/ssrm/ScreenMirroringBooster;->mCPUCoreHelperFor2:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onFgAppInPackageList(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 18
    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "statusName"
    .parameter "statusValue"
    .parameter "packageName"

    .prologue
    .line 84
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v0, "SecurePlayback_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sput-boolean p2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mSecurePlayBack:Z

    .line 90
    invoke-direct {p0}, Lcom/android/server/ssrm/ScreenMirroringBooster;->updateStatus()V

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "ScreenMirroring_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sput-boolean p2, Lcom/android/server/ssrm/ScreenMirroringBooster;->mScreenMirroring:Z

    .line 93
    invoke-direct {p0}, Lcom/android/server/ssrm/ScreenMirroringBooster;->updateStatus()V

    goto :goto_0
.end method
