.class public Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;
.super Landroid/app/Activity;
.source "AppRunnOverWifiDialog.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppRunnOverWifiDialog"


# instance fields
.field public ACTIVITY_ON_TOP:I

.field public USER_RESPONSE:I

.field private am:Landroid/app/ActivityManager;

.field private packageName:Ljava/lang/String;

.field private taskID:I

.field public wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 26
    iput v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 27
    const/16 v0, 0x61

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    .line 29
    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    .line 30
    iput-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    .line 31
    iput v2, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    return v0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 57
    iget-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-nez v3, :cond_0

    .line 58
    const-string v3, "wifioffload"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiOffloadManager;

    iput-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 59
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 61
    const v3, 0x10202b1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 62
    .local v1, button_ok:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$1;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v3, 0x10202b2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, button_always_turn_on:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$2;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v3, 0x10202b3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    .local v2, button_turn_off:Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;

    invoke-direct {v3, p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;-><init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-boolean v3, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "AppRunnOverWifiDialog"

    const-string v4, "notify that 3rd dialog on create has completed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 145
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    const v0, 0x109002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 160
    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x109002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->am:Landroid/app/ActivityManager;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    .line 45
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_offload_monitoring"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    .line 48
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "wifioffload"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiOffloadManager;

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V

    .line 53
    return-void

    :cond_1
    move v0, v2

    .line 45
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 149
    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    iget v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    if-ne v0, v1, :cond_1

    .line 114
    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "onPause() Top Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 120
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->ACTIVITY_ON_TOP:I

    iput v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 135
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 136
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
