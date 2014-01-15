.class public Lcom/android/settings_ex/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiOffloadDialog"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private orientation:I

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field private setupWizardstepIndicator:Ljava/lang/String;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 33
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->taskID:I

    .line 35
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->userPress:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 44
    const-string v0, "1/7"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->disableHomePopup()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/WifiOffloadDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private disableHomePopup()V
    .locals 6

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->isSCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    :cond_0
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Disabling Home Popup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 291
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.setupwizard"

    const-string v4, "com.sec.android.app.setupwizard.PopupActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, name:Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 297
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, startMain:Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 301
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Killing Setup Wizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

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
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 94
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v10, :cond_1

    .line 97
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 98
    const-string v10, "WifiOffloadDialog"

    const-string v11, "Requesting for WIFI from Setupwizard"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f040049

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 101
    .local v9, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 102
    .local v0, ab:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 103
    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    const/16 v4, 0x15

    .line 105
    .local v4, flags:I
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 106
    const v10, 0x7f0b00c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 107
    .local v8, stepIndicator:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 108
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v4           #flags:I
    .end local v8           #stepIndicator:Landroid/widget/TextView;
    :cond_0
    const v10, 0x7f0b0493

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 112
    .local v3, exitSetup:Landroid/widget/Button;
    new-instance v10, Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v10, 0x7f0b0491

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 122
    .local v1, backButton:Landroid/widget/Button;
    new-instance v10, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v1           #backButton:Landroid/widget/Button;
    .end local v3           #exitSetup:Landroid/widget/Button;
    .end local v9           #view:Landroid/view/View;
    :goto_0
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    .local v5, frame:Landroid/widget/FrameLayout;
    const v10, 0x7f0b0489

    invoke-virtual {v5, v10}, Landroid/view/View;->setId(I)V

    .line 162
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {v7}, Lcom/android/settings_ex/wifi/WifiSettings;-><init>()V

    .line 163
    .local v7, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 164
    .local v6, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v6, v10, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 165
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 167
    const v10, 0x7f0b048c

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    .line 168
    const v10, 0x7f0b048b

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    .line 169
    return-void

    .line 137
    .end local v5           #frame:Landroid/widget/FrameLayout;
    .end local v6           #ft:Landroid/app/FragmentTransaction;
    .end local v7           #newFrag:Landroid/app/Fragment;
    :cond_1
    const v10, 0x7f0b048d

    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 138
    .local v2, dontDisturb:Landroid/widget/Button;
    new-instance v10, Lcom/android/settings_ex/wifi/WifiOffloadDialog$3;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog$3;-><init>(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const-string v10, "wifioffload"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiOffloadManager;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 151
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 152
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v10, :cond_2

    .line 153
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 154
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->taskID:I

    goto :goto_0
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 305
    const-string v0, "EK-GC120"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 214
    iput v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->userPress:I

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "WifiOffloadDialog"

    const-string v3, "Offload onBackKeyPressed()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 220
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v2, :cond_2

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, paygDataSetupIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, intentExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    const-string v2, "setup_wizard_bundle"

    const-string v3, "setup_wizard_bundle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 236
    .end local v0           #intentExtras:Landroid/os/Bundle;
    .end local v1           #paygDataSetupIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 229
    .restart local v0       #intentExtras:Landroid/os/Bundle;
    .restart local v1       #paygDataSetupIntent:Landroid/content/Intent;
    :cond_1
    const-string v2, "WifiOffloadDialog"

    const-string v3, "Bundle is Empty in Wifi Offload Screen"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0           #intentExtras:Landroid/os/Bundle;
    .end local v1           #paygDataSetupIntent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 264
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_1

    .line 267
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 268
    const v0, 0x7f04017a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V

    .line 277
    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->orientation:I

    .line 278
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 273
    const v0, 0x7f04017b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 48
    iput-object p0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 50
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, status:I
    const-string v4, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 52
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    if-ne v3, v7, :cond_1

    .line 55
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 56
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->isSCamera()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    const v4, 0x7f100003

    invoke-virtual {p0, v4}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v4, "WifiOffloadDialog"

    const-string v5, "Offload, Dialog comes....!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v4, :cond_6

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->isSCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 72
    .local v2, intentExtras:Landroid/os/Bundle;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 73
    const-string v4, "setup_wizard_bundle"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, bundlelVal:Landroid/os/Bundle;
    const-string v4, "com.sec.android.app.setupwizard_wifi_offload"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    .line 78
    const-string v4, "WifiOffloadDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SetupWizard Step Indicator....!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->setupWizardstepIndicator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0           #bundlelVal:Landroid/os/Bundle;
    :goto_1
    const v4, 0x7f04017b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V

    .line 90
    .end local v2           #intentExtras:Landroid/os/Bundle;
    :goto_2
    return-void

    .line 60
    :cond_4
    const v4, 0x7f100001

    invoke-virtual {p0, v4}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto :goto_0

    .line 81
    .restart local v2       #intentExtras:Landroid/os/Bundle;
    :cond_5
    const-string v4, "WifiOffloadDialog"

    const-string v5, " Bundle is Empty in Wifi Offload Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v2           #intentExtras:Landroid/os/Bundle;
    :cond_6
    const v4, 0x7f04017a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->taskID:I

    .line 177
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 178
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v2, :cond_0

    .line 193
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 195
    const-string v2, "WifiOffloadDialog"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 202
    .local v0, currentWifiState:I
    if-eq v4, v0, :cond_1

    if-nez v0, :cond_2

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 207
    :cond_2
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 208
    .local v1, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 210
    :cond_3
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 255
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 260
    :cond_0
    return-void
.end method
