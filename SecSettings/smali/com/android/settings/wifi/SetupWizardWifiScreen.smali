.class public Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SetupWizardWifiScreen"


# instance fields
.field public final KEY_SETUPWIZARD_BUNDLE:Ljava/lang/String;

.field private final POPUP_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field private final POPUP_ACTIVITY_PACKAGE_NAME:Ljava/lang/String;

.field private mBackwardIntent:Ljava/lang/String;

.field public mBundleExtras:Landroid/os/Bundle;

.field public mForwardIntent:Ljava/lang/String;

.field private mStepIndicator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "com.sec.android.app.setupwizard.PopupActivity"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->POPUP_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 33
    const-string v0, "com.sec.android.app.setupwizard"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->POPUP_ACTIVITY_PACKAGE_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "setup_wizard_bundle"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->KEY_SETUPWIZARD_BUNDLE:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->launchHomeScreen()V

    return-void
.end method

.method private initializeView()V
    .locals 12

    .prologue
    .line 67
    const-string v9, "SetupWizardWifiScreen"

    const-string v10, "initializeView"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040049

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, customTilteView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 72
    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 74
    const/16 v4, 0x15

    .line 76
    .local v4, flags:I
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 77
    const v9, 0x7f0b00c2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 78
    .local v8, stepIndicator:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 79
    iget-object v9, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mStepIndicator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v4           #flags:I
    .end local v8           #stepIndicator:Landroid/widget/TextView;
    :cond_0
    const v9, 0x7f0b0493

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 84
    .local v3, exitSetup:Landroid/widget/Button;
    new-instance v9, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v9, 0x7f0b0491

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, backButton:Landroid/widget/Button;
    new-instance v9, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .local v5, frame:Landroid/widget/FrameLayout;
    const v9, 0x7f0b0489

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    .line 105
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {v7}, Lcom/android/settings_ex/wifi/WifiSettings;-><init>()V

    .line 106
    .local v7, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 107
    .local v6, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v6, v9, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 108
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 109
    return-void
.end method

.method private launchHomeScreen()V
    .locals 3

    .prologue
    .line 167
    const-string v1, "SetupWizardWifiScreen"

    const-string v2, "Launching HOME Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, startMain:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method private updateLayoutMargin(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    const v2, 0x7f0b048e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 152
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v2, "SetupWizardWifiScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Current Device Orientation in updateLayoutMargin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "EK-GC120"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 114
    const-string v1, "SetupWizardWifiScreen"

    const-string v2, " onBackPressed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBackwardIntent:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "setup_wizard_bundle"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 121
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 138
    const-string v0, "SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->updateLayoutMargin(Landroid/content/res/Configuration;)V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const-string v1, "SetupWizardWifiScreen"

    const-string v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 51
    :cond_0
    const v1, 0x7f04017b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, intentExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "setup_wizard_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    const-string v2, "wifi_screen_step_indicator"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mStepIndicator:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    const-string v2, "forward_intent_on_wifi_connection_success"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mForwardIntent:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    const-string v2, "backward_intent_of_wifi_screen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBackwardIntent:Ljava/lang/String;

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->initializeView()V

    .line 62
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->updateLayoutMargin(Landroid/content/res/Configuration;)V

    .line 63
    return-void

    .line 59
    :cond_1
    const-string v1, "SetupWizardWifiScreen"

    const-string v2, " Bundle is Empty in SetupWizardWifiScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "SetupWizardWifiScreen"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 127
    return-void
.end method
