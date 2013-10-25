.class public Lcom/android/server/ssrm/KfcControl;
.super Lcom/android/server/ssrm/FgAppListener;
.source "KfcControl.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final KT_NAVI_PACKAGE_NAME:Ljava/lang/String; = "kt.navi"

.field private static final LGU_NAVI_PACKAGE_NAME:Ljava/lang/String; = "com.mnsoft.lgunavi"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String; = null

.field private static final TMAP_PACKAGE_NAME:Ljava/lang/String; = "com.skt.skaf.l001mtm091"

.field private static mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

.field private static mSupportedCpuFreq:[I

.field private static mTMapOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "KfcControl"

    sput-object v0, Lcom/android/server/ssrm/KfcControl;->TAG:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    .line 34
    sput-object v1, Lcom/android/server/ssrm/KfcControl;->mSupportedCpuFreq:[I

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/KfcControl;->mTMapOn:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 25
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "com.skt.skaf.l001mtm091"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 28
    const-string v0, "kt.navi"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 29
    const-string v0, "com.mnsoft.lgunavi"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFgAppChanged()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-string v1, "ja"

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KOR"

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "com.skt.skaf.l001mtm091"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kt.navi"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.mnsoft.lgunavi"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_0
    sput-boolean v4, Lcom/android/server/ssrm/KfcControl;->mTMapOn:Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "TMap_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v1, "PackageName"

    const-string v2, "com.skt.skaf.l001mtm091"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "PID"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    sget-object v1, Lcom/android/server/ssrm/KfcControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/KfcControl;->mTMapOn:Z

    if-eqz v1, :cond_1

    .line 75
    sput-boolean v3, Lcom/android/server/ssrm/KfcControl;->mTMapOn:Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "TMap_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v1, "PackageName"

    const-string v2, "com.skt.skaf.l001mtm091"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "PID"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/android/server/ssrm/KfcControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onFgAppInPackageList(Z)V
    .locals 6
    .parameter "isForeground"

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/KfcControl;->mContext:Landroid/content/Context;

    const-string v2, "JA_KFC_CONTROL"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    .line 40
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/KfcControl;->mSupportedCpuFreq:[I

    .line 41
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mSupportedCpuFreq:[I

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x927c0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 45
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mSupportedCpuFreq:[I

    if-nez v0, :cond_1

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    .line 49
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/KfcControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method
