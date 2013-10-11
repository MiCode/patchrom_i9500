.class public Lcom/android/server/ssrm/GoogleNaviControl;
.super Lcom/android/server/ssrm/FgAppListener;
.source "GoogleNaviControl.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final GOOGLE_NAVI_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static TAG:Ljava/lang/String;

.field private static mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

.field private static mGoogleNaviOn:Z

.field private static mSupportedCpuFreq:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "GoogleNaviControl"

    sput-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->TAG:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    .line 27
    sput-object v1, Lcom/android/server/ssrm/GoogleNaviControl;->mSupportedCpuFreq:[I

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/GoogleNaviControl;->mGoogleNaviOn:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 23
    const-string v0, "com.google.android.apps.maps"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFgAppChanged()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sput-boolean v4, Lcom/android/server/ssrm/GoogleNaviControl;->mGoogleNaviOn:Z

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "GoogleNavi_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v1, "PackageName"

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "PID"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    sget-object v1, Lcom/android/server/ssrm/GoogleNaviControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/GoogleNaviControl;->mGoogleNaviOn:Z

    if-eqz v1, :cond_0

    .line 68
    sput-boolean v3, Lcom/android/server/ssrm/GoogleNaviControl;->mGoogleNaviOn:Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "GoogleNavi_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "PackageName"

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "PID"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/android/server/ssrm/GoogleNaviControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onFgAppInPackageList(Z)V
    .locals 6
    .parameter "isForeground"

    .prologue
    .line 31
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/GoogleNaviControl;->mContext:Landroid/content/Context;

    const-string v2, "GOOGLE_NAVI_CONTROL"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    .line 33
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mSupportedCpuFreq:[I

    .line 34
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mSupportedCpuFreq:[I

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x927c0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mSupportedCpuFreq:[I

    if-nez v0, :cond_2

    .line 50
    :goto_1
    return-void

    .line 37
    :cond_1
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x13d620

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 45
    :cond_2
    if-eqz p1, :cond_3

    .line 46
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1

    .line 48
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/GoogleNaviControl;->mArmMaxFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
